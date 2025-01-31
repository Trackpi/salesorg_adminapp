import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/constants/constants.dart';
import 'package:salesorg_adminapp/gen/assets.gen.dart';
import 'package:salesorg_adminapp/routes/drawer_routes.dart';
import 'package:salesorg_adminapp/side_drawer/drawer_tab.dart';
import 'package:salesorg_adminapp/side_drawer/expandable_drawer_tab.dart';
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
            backgroundColor: CustomColors.sideMenuColor,
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
                tileColor: CustomColors.unSelectedTileColor,
                textStyle: unSelectedTextStyle,
                selectionTextStyle: selectionTextStyle,
                borderRadius: borderRadius,
              ),
              gapLarge,
              ExpandableDrawerTab(
                  initiallyExpanded: false,
                  expandedIconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  titlePadding: EdgeInsets.only(left: padding),
                  expandedShape: RoundedRectangleBorder(
                      borderRadius: borderRadius,
                      side: BorderSide(color: CustomColors.tileSelectionColor)),
                  title: 'Core Management',
                  tabId: 2,
                  expandedTextStyle:
                      unSelectedTextStyle.copyWith(color: Colors.black),
                  collapsedTextStyle:
                      unSelectedTextStyle.copyWith(color: Colors.black),
                  children: [
                    DrawerTab(
                      title: 'Admin Management',
                      tabId: 3,
                      isChild: true,
                      tileColor: CustomColors.unSelectedTileColor,
                      borderRadius: borderRadius,
                      selectionTextStyle:
                          selectionTextStyle.copyWith(color: Colors.white),
                    )
                  ])
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
