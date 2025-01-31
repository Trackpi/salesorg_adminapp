import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/view/admin_page/admin_management.dart';
import 'package:salesorg_adminapp/view/company_product_page/company_product_management.dart';
import 'package:salesorg_adminapp/view/dashboard/dash_board.dart';

class DrawerRoutes {
  static final Map<int, Widget> pageMap = {
    1: DashBoard(),
    3: AdminManagement(),
    4: UserManagement(),
  5:CompanyProductManagement() ,

    6: CompanyProfile(),

    7:TeamMapping(),
    8:RevenueManagement(),
    9: TicketManagement(),
    10: FormManagement(),
    11: VoucherCodeManagement(),
    12: TerminationManagement(),
    13: AnnounceMentManagement(),

    
  };
}
