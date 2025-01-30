import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/constants/constants.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    logMan.e("Dashboard");
    return Scaffold(
      body: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
