import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/view/admin_page/admin_management.dart';
import 'package:salesorg_adminapp/view/dashboard/dash_board.dart';

class DrawerRoutes {
  static final Map<int, Widget> pageMap = {
    1: DashBoard(),
    3: AdminManagement()
  };
}
