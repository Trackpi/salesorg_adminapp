import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/side_drawer/side_drawer.dart';

class DrawerTab extends StatelessWidget {
  final String title;
  final IconData? icon;
  final int tabId;
  final bool isChild;
  final Color? tileColor;
  final Color? selectionColor;
  final TextStyle? textStyle;
  final MainAxisAlignment? mainAxisAlignment;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? textPadding;
  final TextStyle? selectionTextStyle;

  const DrawerTab({
    super.key,
    required this.title,
    required this.tabId,
    this.icon,
    this.isChild = false,
    this.tileColor,
    this.selectionColor,
    this.borderRadius,
    this.textStyle,
    this.mainAxisAlignment,
    this.textPadding,
    this.selectionTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: SideDrawer.activeTabNotifier,
        builder: (context, activeTab, child) {
          return Container(
            decoration: BoxDecoration(
              color: activeTab == tabId
                  ? (selectionColor ?? Colors.blue)
                  : tileColor ?? Colors.blueGrey[900],
              borderRadius: borderRadius ??
                  BorderRadius.all(
                    Radius.circular(10),
                  ),
            ),
            child: ListTile(
              leading: icon != null ? Icon(icon, color: Colors.white) : null,
              title: Padding(
                padding: textPadding ?? EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment:
                      mainAxisAlignment ?? MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style:
                            tabId == activeTab ? selectionTextStyle : textStyle,
                      ),
                    )
                  ],
                ),
              ),
              contentPadding:
                  isChild ? EdgeInsets.only(left: 32.0) : EdgeInsets.zero,
              onTap: () {
                SideDrawer.activeTabNotifier.value = tabId;
              },
            ),
          );
        });
  }
}
