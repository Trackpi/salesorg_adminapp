import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/constants/constants.dart';
import 'package:salesorg_adminapp/routes/routes.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        theme: ThemeData(
            fontFamily: 'Inter',
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: tileSelectionColor)),
        debugShowCheckedModeBanner: false,
        initialRoute: Approutes.navScreen,
        onGenerateRoute: Approutes.generateRoute,
      ),
    );
  }
}
