import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';




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
appBar: AppBar(




),



body: Row(children: [


SideMenu(
  
  
  
  style: SideMenuStyle(

displayMode: SideMenuDisplayMode.open,

hoverColor: Colors.blue,



  ),
  
  
  items: [





], controller: sideMenuController,






)




],),
    );
  }
}