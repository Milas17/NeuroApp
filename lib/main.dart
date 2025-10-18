import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';

// ⚙️ Firebase (optionnel sur Web)
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// 🌐 App imports
import 'package:kivicare_flutter/app_theme.dart';
import 'package:kivicare_flutter/config.dart';
import 'package:kivicare_flutter/locale/app_localizations.dart';
import 'package:kivicare_flutter/locale/base_language_key.dart';
import 'package:kivicare_flutter/locale/language_en.dart';
import 'package:kivicare_flutter/model/language_model.dart';
import 'package:kivicare_flutter/network/auth_repository.dart';
import 'package:kivicare_flutter/screens/doctor/store/DoctorAppStore.dart';
import 'package:kivicare_flutter/screens/patient/store/patient_store.dart';
import 'package:kivicare_flutter/screens/receptionist/store/ReceptionistAppStore.dart';
import 'package:kivicare_flutter/screens/splash_screen.dart';
import 'package:kivicare_flutter/store/AppStore.dart';
import 'package:kivicare_flutter/store/AppointmentAppStore.dart';
import 'package:kivicare_flutter/store/ListAppStore.dart';
import 'package:kivicare_flutter/store/MultiSelectStore.dart';
import 'package:kivicare_flutter/store/PermissionStore.dart';
import 'package:kivicare_flutter/store/ShopStore.dart';
import 'package:kivicare_flutter/store/UserStore.dart';
import 'package:kivicare_flutter/utils/colors.dart';
import 'package:kivicare_flutter/utils/common.dart';
import 'package:kivicare_flutter/utils/constants.dart';

import 'network/services/default_firebase_config.dart';
import 'utils/app_common.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log('${FirebaseMsgConst.notificationDataKey} : ${message.data}');
  log('${FirebaseMsgConst.notificationKey} : ${message.notification}');
  log('${FirebaseMsgConst.notificationTitleKey} : ${message.notification?.title}');
  log('${FirebaseMsgConst.notificationBodyKey} : ${message.notification?.body}');
}

late PackageInfoData packageInfo;

AppStore appStore = AppStore();
PatientStore patientStore = PatientStore();
ListAppStore listAppStore = ListAppStore();
AppointmentAppStore appointmentAppStore = AppointmentAppStore();
MultiSelectStore multiSelectStore = MultiSelectStore();
DoctorAppStore doctorAppStore = DoctorAppStore();
ReceptionistAppStore receptionistAppStore = ReceptionistAppStore();
PermissionStore permissionStore = PermissionStore();
ShopStore shopStore = ShopStore();
UserStore userStore = UserStore();

ListAnimationType listAnimationType = ListAnimationType.FadeIn;
PageRouteAnimation pageAnimation = PageRouteAnimation.Fade;
PageRouteAnimation signInAnimation = PageRouteAnimation.Scale;
Duration pageAnimationDuration = Duration(milliseconds: 500);

BaseLanguage locale = LanguageEn();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 Initialisation Firebase (uniquement sur Mobile)
  if (!kIsWeb) {
    try {
      await Firebase.initializeApp(
        name: DefaultFirebaseConfig.platformOptions.projectId,
        options: DefaultFirebaseConfig.platformOptions,
      );
      await FirebaseMessaging.instance.setAutoInitEnabled(true);
    } catch (e) {
      log('FIREBASE INIT ERROR: $e');
    }
  }

  // 🎨 Configuration globale UI
  defaultBlurRadius = 0;
  defaultSpreadRadius = 0.0;
  defaultAppBarElevation = 2;
  appBarBackgroundColorGlobal = primaryColor;
  appButtonBackgroundColorGlobal = primaryColor;
  defaultAppButtonTextColorGlobal = Colors.white;
  defaultAppButtonElevation = 0.0;
  passwordLengthGlobal = 6;
  defaultRadius = 12;
  defaultLoaderAccentColorGlobal = primaryColor;

  await initialize(aLocaleLanguageList: languageList());

  if (!kIsWeb) {
    await setupRemoteConfig().catchError((e) {
      log('Remote Config Error: $e');
    });
  }

  appStore.setLanguage(getStringAsync(SELECTED_LANGUAGE_CODE, defaultValue: DEFAULT_LANGUAGE));
  appStore.setLoggedIn(getBoolAsync(IS_LOGGED_IN));

  await defaultValue();

  // 🚫 HttpOverrides et PackageInfo non compatibles Web
  if (!kIsWeb) {
    try {
      HttpOverrides.global = HttpOverridesSkipCertificate();
      packageInfo = await getPackageInfo();
      appStore.setAppVersion(packageInfo.versionName.validate());
    } catch (e) {
      log('PackageInfo Error: $e');
    }
  } else {
    appStore.setAppVersion("Web");
  }

  int themeModeIndex = getIntAsync(THEME_MODE_INDEX);
  appStore.setDarkMode(themeModeIndex == THEME_MODE_DARK);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    // 🌐 Vérification connexion (désactivée sur web)
    if (!kIsWeb) {
      Connectivity().onConnectivityChanged.listen((event) {
        appStore.setInternetStatus(!event.contains(ConnectivityResult.none));
      });
    }

    removePermission();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: APP_NAME,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: appStore.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        navigatorKey: navigatorKey,
        supportedLocales: Language.languagesLocale(),
        localeResolutionCallback: (locale, supportedLocales) => locale,
        locale: Locale(appStore.selectedLanguageCode),
        localizationsDelegates: const [
          AppLocalizations(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
