import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/constants/constants.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme:
          ColorScheme.fromSeed(seedColor: CustomColors.tileSelectionColor),
      fontFamily: 'Inter',
      scaffoldBackgroundColor: CustomColors.snowWhite,
      appBarTheme: AppBarTheme(
          toolbarHeight: 8.h,
          backgroundColor: CustomColors.sideMenuColor.withValues(alpha: .3)));
}
