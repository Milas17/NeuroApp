import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kivicare_flutter/components/app_bar_title_widget.dart';
import 'package:kivicare_flutter/components/dashboard_profile_widget.dart';
import 'package:kivicare_flutter/main.dart';
import 'package:kivicare_flutter/screens/dashboard/fragments/patient_list_fragment.dart';
import 'package:kivicare_flutter/screens/doctor/fragments/dashboard_fragment.dart';
import 'package:kivicare_flutter/screens/doctor/fragments/appointment_fragment.dart';
import 'package:kivicare_flutter/fragments/setting_fragment.dart';
import 'package:kivicare_flutter/screens/woocommerce/screens/product_list_screen.dart';
import 'package:kivicare_flutter/utils/app_common.dart';
import 'package:kivicare_flutter/utils/colors.dart';
import 'package:kivicare_flutter/utils/common.dart';
import 'package:kivicare_flutter/utils/constants.dart';
import 'package:kivicare_flutter/utils/constants/sharedpreference_constants.dart';
import 'package:kivicare_flutter/utils/images.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:kivicare_flutter/screens/doctor/screens/teleconsultation_page.dart';

class DoctorDashboardScreen extends StatefulWidget {
  @override
  _DoctorDashboardScreenState createState() => _DoctorDashboardScreenState();
}

class _DoctorDashboardScreenState extends State<DoctorDashboardScreen> {
  double iconSize = 24;

  bool get showAppointment => isVisible(SharedPreferenceKey.kiviCareAppointmentListKey);
  bool get showDashboard => isVisible(SharedPreferenceKey.kiviCareDashboardKey);
  bool get showPatientList => isVisible(SharedPreferenceKey.kiviCarePatientListKey);

  List<Widget> getScreens() {
    return [
      if (showDashboard) DashboardFragment(),
      if (showAppointment) AppointmentFragment(),
      if (showPatientList) PatientListFragment(),
      SettingFragment(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DoublePressBackWidget(
      child: Observer(builder: (context) {
        if (doctorAppStore.bottomNavIndex >= getScreens().length) {
          doctorAppStore.setBottomNavIndex(getScreens().length - 1);
        }
        Color disabledIconColor = appStore.isDarkModeOn ? Colors.white : secondaryTxtColor;

        return Scaffold(
          appBar: doctorAppStore.bottomNavIndex != getScreens().length - 1
              ? appBarWidget(
                  '',
                  titleWidget: AppBarTitleWidget(),
                  showBack: false,
                  color: context.scaffoldBackgroundColor,
                  elevation: 0,
                  actions: [
                    ic_shop.iconImageColored().paddingAll(14).appOnTap(() {
                      ProductListScreen().launch(context,
                          pageRouteAnimation: pageAnimation, duration: pageAnimationDuration);
                    }).visible(appStore.wcNonce.validate().isNotEmpty),
                    DashboardTopProfileWidget(refreshCallback: () => setState(() {})),
                  ],
                )
              : null,
          body: getScreens()[doctorAppStore.bottomNavIndex],
          bottomNavigationBar: NavigationBar(
            height: 66,
            selectedIndex: doctorAppStore.bottomNavIndex,
            backgroundColor: context.cardColor,
            onDestinationSelected: (index) {
              if (index == 2) {
                // 👇 Quand on clique sur le bouton téléconsultation
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TeleconsultationPage()),
                );
              } else {
                doctorAppStore.setBottomNavIndex(index);
                setState(() {});
              }
            },
            destinations: [
              if (showDashboard)
                NavigationDestination(
                  icon: Image.asset(ic_dashboard, height: iconSize, width: iconSize, color: disabledIconColor),
                  label: locale.lblDashboard,
                  selectedIcon: Image.asset(ic_dashboard, height: iconSize, width: iconSize, color: primaryColor),
                ),
              if (showAppointment)
                NavigationDestination(
                  icon: Image.asset(ic_calendar, height: iconSize, width: iconSize, color: disabledIconColor),
                  label: locale.lblAppointments,
                  selectedIcon: Image.asset(ic_calendar, height: iconSize, width: iconSize, color: primaryColor),
                ),
              // 👉 bouton téléconsultation (toujours présent)
              NavigationDestination(
                icon: Icon(Icons.video_call, size: iconSize, color: disabledIconColor),
                label: "Téléconsultation",
                selectedIcon: Icon(Icons.video_call, size: iconSize, color: primaryColor),
              ),
              if (showPatientList)
                NavigationDestination(
                  icon: Image.asset(ic_patient, height: iconSize, width: iconSize, color: disabledIconColor),
                  label: locale.lblPatients,
                  selectedIcon: Image.asset(ic_patient, height: iconSize, width: iconSize, color: primaryColor),
                ),
              NavigationDestination(
                icon: Image.asset(ic_more_item, height: iconSize, width: iconSize, color: disabledIconColor),
                label: locale.lblSettings,
                selectedIcon: Image.asset(ic_more_item, height: iconSize, width: iconSize, color: primaryColor),
              ),
            ],
          ),
        );
      }),
    );
  }
}
