import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kivicare_flutter/components/app_bar_title_widget.dart';
import 'package:kivicare_flutter/components/dashboard_profile_widget.dart';
import 'package:kivicare_flutter/main.dart';
import 'package:kivicare_flutter/screens/patient/fragments/patient_appointment_fragment.dart';
import 'package:kivicare_flutter/screens/patient/fragments/patient_dashboard_fragment.dart';
import 'package:kivicare_flutter/screens/patient/screens/feeds/feed_fragment.dart';
import 'package:kivicare_flutter/fragments/setting_fragment.dart';
import 'package:kivicare_flutter/screens/woocommerce/screens/product_list_screen.dart';
import 'package:kivicare_flutter/utils/app_common.dart';
import 'package:kivicare_flutter/utils/colors.dart';
import 'package:kivicare_flutter/utils/common.dart';
import 'package:kivicare_flutter/utils/constants.dart';
import 'package:kivicare_flutter/utils/constants/sharedpreference_constants.dart';
import 'package:kivicare_flutter/utils/images.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:kivicare_flutter/screens/patient/screens/teleconsultation_page.dart';

class PatientDashBoardScreen extends StatefulWidget {
  @override
  _PatientDashBoardScreenState createState() => _PatientDashBoardScreenState();
}

class _PatientDashBoardScreenState extends State<PatientDashBoardScreen> {
  double iconSize = 24;

  List<Widget> getScreens() {
    return [
      if (showDashboard) PatientDashBoardFragment(),
      if (showAppointment) PatientAppointmentFragment(),
      FeedFragment(),
      SettingFragment(),
    ];
  }

  bool get showAppointment {
    return isVisible(SharedPreferenceKey.kiviCareAppointmentListKey);
  }

  bool get showDashboard {
    return isVisible(SharedPreferenceKey.kiviCareDashboardKey);
  }

  @override
  Widget build(BuildContext context) {
    return DoublePressBackWidget(
      child: Observer(
        builder: (context) {
          if (patientStore.bottomNavIndex >= getScreens().length) {
            patientStore.setBottomNavIndex(getScreens().length - 1);
          }
          Color disableIconColor =
              appStore.isDarkModeOn ? Colors.white : secondaryTxtColor;

          return Scaffold(
            appBar: patientStore.bottomNavIndex != getScreens().length - 1
                ? appBarWidget(
                    '',
                    titleWidget: AppBarTitleWidget(),
                    showBack: false,
                    color: context.scaffoldBackgroundColor,
                    elevation: 0,
                    actions: [
                      ic_shop.iconImageColored(size: 28)
                          .paddingAll(14)
                          .appOnTap(() {
                        ProductListScreen().launch(context,
                            pageRouteAnimation: pageAnimation,
                            duration: pageAnimationDuration);
                      }).visible(appStore.wcNonce.validate().isNotEmpty),
                      DashboardTopProfileWidget(
                        refreshCallback: () => setState(() {}),
                      )
                    ],
                  )
                : null,
            body: getScreens()[patientStore.bottomNavIndex],
            bottomNavigationBar: NavigationBar(
              height: 66,
              selectedIndex: patientStore.bottomNavIndex,
              backgroundColor: context.cardColor,
              onDestinationSelected: (index) {
                if (index == 2) {
                  // 👈 icône vidéo
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => TeleconsultationPage()),
                  );
                } else {
                  patientStore.setBottomNavIndex(index);
                  setState(() {});
                }
              },
              destinations: [
                if (showDashboard)
                  NavigationDestination(
                    icon: Image.asset(ic_dashboard,
                        height: iconSize,
                        width: iconSize,
                        color: disableIconColor),
                    label: locale.lblPatientDashboard,
                    selectedIcon: Image.asset(ic_dashboard,
                        height: iconSize,
                        width: iconSize,
                        color: primaryColor),
                  ),
                if (showAppointment)
                  NavigationDestination(
                    icon: Image.asset(ic_calendar,
                        height: iconSize,
                        width: iconSize,
                        color: disableIconColor),
                    label: locale.lblAppointments,
                    selectedIcon: Image.asset(ic_calendar,
                        height: iconSize,
                        width: iconSize,
                        color: primaryColor),
                  ),
                // 👇 bouton téléconsultation
                NavigationDestination(
                  icon: Icon(Icons.video_call,
                      size: iconSize, color: disableIconColor),
                  label: "Téléconsultation",
                  selectedIcon: Icon(Icons.video_call,
                      size: iconSize, color: primaryColor),
                ),
                NavigationDestination(
                  icon: Image.asset(ic_document,
                      height: iconSize,
                      width: iconSize,
                      color: disableIconColor),
                  label: locale.lblFeedsAndArticles,
                  selectedIcon: Image.asset(ic_document,
                      height: iconSize,
                      width: iconSize,
                      color: primaryColor),
                ),
                NavigationDestination(
                  icon: Image.asset(ic_more_item,
                      height: iconSize,
                      width: iconSize,
                      color: disableIconColor),
                  label: locale.lblSettings,
                  selectedIcon: Image.asset(ic_more_item,
                      height: iconSize,
                      width: iconSize,
                      color: primaryColor),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
