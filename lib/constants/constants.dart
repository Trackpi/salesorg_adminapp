import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';

elayed({Duration duration = const Duration(seconds: 2)}) async {
  return await Future.delayed(duration);
}

const double padding = 4;
const double paddingLarge = 8;
const double paddingXL = 16;
const double paddingXXL = 32;
const double paddingSmall = 2;
const double paddingTiny = 1;

final gap = Gap(padding.sp);
final gapLarge = Gap(paddingLarge.sp);
final gapXL = Gap(paddingXL.sp);
final gapXXL = Gap(paddingXXL.sp);
final gapSmall = Gap(paddingSmall.sp);
final gapTiny = Gap(paddingTiny.sp);

List<BoxShadow> constShadow = [
  BoxShadow(
    color: Colors.black.withValues(alpha: .3),
    spreadRadius: 2,
    blurRadius: 10,
    offset: const Offset(0, 5),
  ),
];

//Colors
class CustomColors {
  static Color snowWhite = Color(0xffF5F5F5);
  static Color unSelectedTileColor = Colors.transparent;

  static Color 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  sideMenuColor = Color(0xff3784DC).withValues(alpha: .3);
  static Color tileSelectionColor = Color(0xff3784DC);
}
//logger

Logger logMan = Logger(
  printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 50,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.dateAndTime),
);

//Textstyle
TextStyle unSelectedTextStyle =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 13.sp);
TextStyle selectionTextStyle = TextStyle(
    fontWeight: FontWeight.w600, color: Colors.white, fontSize: 13.sp);

BorderRadius borderRadius = BorderRadius.circular(10.sp);
