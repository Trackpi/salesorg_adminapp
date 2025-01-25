import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/view/dashboard/dash_board.dart';

class Approutes {

static const String dashboard = '/';

static Route<dynamic> generateRoute(RouteSettings settings) {  
  switch (settings.name) {
    case dashboard:
      return MaterialPageRoute(builder: (_) => DashBoard());
    default:
      return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
  } 






}}