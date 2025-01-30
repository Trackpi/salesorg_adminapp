import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/constants/constants.dart';
import 'package:salesorg_adminapp/gen/assets.gen.dart';
import 'package:salesorg_adminapp/routes/drawer_routes.dart';
import 'package:salesorg_adminapp/side_drawer/drawer_tab.dart';
import 'package:salesorg_adminapp/side_drawer/side_drawer.dart';
import 'package:sizer/sizer.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideDrawer(
            backgroundColor: sideMenuColor,
            width: 20.w,
            pageMap: DrawerRoutes.pageMap,
            children: [
              gapLarge,
              Image.asset(
                Assets.pngs.trackPi.path,
                height: 10.h,
                width: 10.w,
              ),
              gapLarge,
              DrawerTab(
                title: 'Dashboard',
                tabId: 1,
                tileColor: Colors.transparent,
                textStyle: unSelectedTextStyle,
                selectionTextStyle:
                   selectionTextStyle,
              )
            ],
          ),
          Expanded(
            child: Center(
              child: ValueListenableBuilder<int>(
                valueListenable: SideDrawer.activeTabNotifier,
                builder: (context, activeTab, child) {
                  return DrawerRoutes.pageMap[activeTab] ?? Container();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
