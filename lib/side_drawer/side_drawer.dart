import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  static final ValueNotifier<int> activeTabNotifier = ValueNotifier<int>(0);
  final Color? backgroundColor;
  final List<Widget> children;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final Border? border;
  final BorderRadius? borderRadiusOfSideBar;
  final BlendMode? sideBarBackgroundBlendMode;
  final EdgeInsetsGeometry? sideBarPadding;
  final EdgeInsetsGeometry? sideListPadding;
  final bool? shrinkWrap;
  final Gradient? gradient;
  final Map<int, Widget> pageMap;

  const SideDrawer({
    super.key,
    this.backgroundColor,
    required this.children,
    this.width,
    this.boxShadow,
    this.border,
    this.borderRadiusOfSideBar,
    this.sideBarBackgroundBlendMode,
    this.sideBarPadding,
    this.sideListPadding,
    this.shrinkWrap,
    this.gradient,
    required this.pageMap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      padding: sideBarPadding ?? EdgeInsets.all(0),
      width: width ?? screenWidth * .2,
      decoration: gradient != null
          ? BoxDecoration(
              gradient: gradient,
              boxShadow: boxShadow ?? [],
              border: border ?? Border(),
              borderRadius:
                  borderRadiusOfSideBar ?? BorderRadius.all(Radius.circular(0)),
              backgroundBlendMode:
                  sideBarBackgroundBlendMode ?? BlendMode.darken,
            )
          : BoxDecoration(
              color: backgroundColor ?? Colors.blueGrey[900],
              boxShadow: boxShadow ?? [],
              border: border ?? Border(),
              borderRadius:
                  borderRadiusOfSideBar ?? BorderRadius.all(Radius.circular(0)),
              backgroundBlendMode:
                  sideBarBackgroundBlendMode ?? BlendMode.darken,
            ),
      child: ListView(
        shrinkWrap: shrinkWrap ?? false,
        padding: sideListPadding ?? EdgeInsets.all(8),
        children: children,
      ),
    );
  }
}
