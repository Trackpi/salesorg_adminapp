import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/constants/constants.dart';

class AdminManagement extends StatelessWidget {
  const AdminManagement({super.key});

  @override
  Widget build(BuildContext context) {
    logMan.i("Tapped : Admin Mgmt");
    return const Scaffold(
      body: Center(
        child: Text("Admin Management"),
      ),
    );
  }
}
