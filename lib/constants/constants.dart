import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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

final gap = Gap(padding.h);
final gapLarge = Gap(paddingLarge.h);
final gapXL = Gap(paddingXL.h);
final gapXXL = Gap(paddingXXL.h);
final gapSmall = Gap(paddingSmall.h);
final gapTiny = Gap(paddingTiny.h);

List<BoxShadow> constShadow = [
  BoxShadow(
    color: Colors.black.withValues(alpha: .3),
    spreadRadius: 2,
    blurRadius: 10,
    offset: const Offset(0, 5),
  ),
];

Color sideMenuColor = Color(0xff3784DC).withValues(alpha: .3);
