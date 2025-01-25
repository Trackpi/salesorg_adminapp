import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/constants/constants.dart';
import 'package:salesorg_adminapp/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  SideMenuController sideMenuController = SideMenuController();

  PageController pageController = PageController();

  @override
  void initState() {
    sideMenuController.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(
            title: Column(
              children: [
                gap,
                SizedBox(
                  width: double.infinity,
                  height: 10.h,
                  child: Center(
                    child: Image.asset(
                      Assets.pngs.trackPi.path,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                gap,
              ],
            ),
            controller: sideMenuController,
            style: SideMenuStyle(
              backgroundColor: sideMenuColor,
              displayMode: SideMenuDisplayMode.open,
            ),
            items: [
              SideMenuItem(
                title: 'Home',
                icon: Icon(Icons.home),
              ),
              SideMenuItem(
                title: 'Profile',
                icon: Icon(Icons.person),
              ),
              SideMenuItem(
                title: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          )
        ],
      ),
    );
  }
}
