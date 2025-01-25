import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:salesorg_adminapp/constants/constants.dart';
import 'package:salesorg_adminapp/extensions/font_extensions.dart';
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
                gapSmall,
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
                gapSmall,
              ],
            ),
            controller: sideMenuController,
            style: SideMenuStyle(
              itemInnerSpacing: padding,
              
              itemBorderRadius: BorderRadius.circular(paddingLarge),
              unselectedTitleTextStyle:
                  TextStyle().inter40018.copyWith(fontSize: 12.sp),
              selectedTitleTextStyle:
                  TextStyle().inter40018.copyWith(fontSize: 12.sp),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(padding)),
              showTooltip: true,

              //TODO: Change the color of the side menu
              backgroundColor: sideMenuColor,
              displayMode: SideMenuDisplayMode.open,
            ),
            items: [
              SideMenuItem(
                title: 'Dashboard',
                onTap: (index, _) => sideMenuController.changePage(index),
              ),
              SideMenuExpansionItem(
                children: [
                  SideMenuItem(
                    trailing: Gap(2.w),
                    title: "Admin Management",
                    onTap: (index, _) => sideMenuController.changePage(index),
                  ),
                  SideMenuItem(
                    trailing: Gap(2.w),
                    title: "Company & product Management",
                    onTap: (index, _) => sideMenuController.changePage(index),
                  ),
                ],
                title: 'Core Management',
              ),
              SideMenuItem(
                title: 'Company Profile',
                onTap: (index, _) => sideMenuController.changePage(index),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Dashboard',
                      style: TextStyle().inter40018.copyWith(fontSize: 12.sp),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Admin Management',
                      style: TextStyle().inter40018.copyWith(fontSize: 12.sp),
                    ),
                  ),
                ),
                Container(
                    color: Colors.blue,
                    child: Center(
                        child: Text(
                      'Company & product Management',
                      style: TextStyle().inter40018.copyWith(fontSize: 12.sp),
                    ))),
                Container(
                    color: Colors.yellow,
                    child: Center(
                        child: Text(
                      'Company Profile',
                      style: TextStyle().inter40018.copyWith(fontSize: 12.sp),
                    ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
