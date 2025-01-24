import 'package:flutter/material.dart';
import 'package:salesorg_adminapp/theme/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(color: lightSidebarColor),
          ),

          // Expanded widget for Main Dashboard Area
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Container(
                  color: lightTopbarColor,
                  height: 100,
                ),
                Expanded(
                  child: Container(
                    color: pureWhite,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
