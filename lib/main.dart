import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';

// Firebase uniquement pour mobile
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

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

// ✅ Rétablis les 3 listes globales manquantes
List<String> paymentMethodList = [];
List<String> paymentMethodImages = [];
List<String> paymentModeList = [];

BaseLanguage locale = LanguageEn();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 Firebase uniquement si pas Web
  if (!kIsWeb) {
    try {
      await Firebase.initializeApp(
        name: DefaultFirebaseConfig.platformOptions.projectId,
        options: DefaultFirebaseConfig.platformOptions,
      );
      await FirebaseMessaging.instance.setAutoInitEnabled(true);
    } catch (e) {
      log('Firebase init error: $e');
    }
  }

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

  // 🚫 Supprime HttpOverrides pour Web (dart:io non disponible)
  if (!kIsWeb) {
    try {
      HttpOverrides.global = HttpOverridesSkipCertificate();
    } catch (e) {
      log('HttpOverrides error: $e');
    }
  }

  // 🚫 PackageInfo seulement mobile
  try {
    if (!kIsWeb) {
      packageInfo = await getPackageInfo();
      appStore.setAppVersion(packageInfo.versionName.validate());
    } else {
      appStore.setAppVersion("Web");
    }
  } catch (e) {
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

    // 🌐 Pas de Connectivity sur Web
    if (!kIsWeb) {
      try {
        Connectivity().onConnectivityChanged.listen((event) {
          appStore.setInternetStatus(!event.contains(ConnectivityResult.none));
        });
      } catch (e) {
        log('Connectivity init error: $e');
      }
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
