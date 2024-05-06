import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/features/campaigns_module/presentation/campaign_screen.dart';
import 'package:charity_app/features/dashboard_module/presentation/dashboard_screen.dart';
import 'package:charity_app/features/home_module/presentation/home_screen.dart';
import 'package:charity_app/features/settings_module/presentation/payment_setting_screen.dart';
import 'package:flutter/material.dart';

class BaseApp extends StatefulWidget {
  const BaseApp({super.key});

  @override
  State<BaseApp> createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    late final pages = <Widget>[
      HomeScreen(),
      DashboardScreen(),
      CampaignScreen(),
      PaymentSettingScreen(),
    ];

    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        backgroundColor: appTheme.gray100,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.navHome,
              ),
            ),
            label: 'Home',
            activeIcon: Container(
              decoration: BoxDecoration(
                color: appTheme.green100,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.navHome,
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.navDashboard,
              ),
            ),
            label: 'Dashboard',
            activeIcon: Container(
              decoration: BoxDecoration(
                color: appTheme.green100,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.navDashboard,
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: Icon(
                Icons.campaign,
              ),
            ),
            label: 'Campaign',
            activeIcon: Container(
              decoration: BoxDecoration(
                color: appTheme.green100,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: Icon(
                Icons.campaign,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.navSetting,
              ),
            ),
            label: 'Setting',
            activeIcon: Container(
              decoration: BoxDecoration(
                color: appTheme.green100,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.navSetting,
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
        selectedItemColor: theme.colorScheme.onPrimary,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
