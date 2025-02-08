import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:salesorg_adminapp/constants/constants.dart';
import 'package:salesorg_adminapp/widgets/titled_app_bar.dart';
import 'package:sizer/sizer.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    logMan.d("Tapped : Dashboard");
    return Scaffold(
      appBar: TitledAppBar(
        title: 'Dashboard',
      ),
      body: Center(
        child: Text("  Dashboard"),
      ),
    );
  }
}
