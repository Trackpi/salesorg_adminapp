
import 'package:flutter/material.dart'; 
import 'package:salesorg_adminapp/routes/routes.dart'; // Custom routes for navigation
import 'package:sizer/sizer.dart'; // Provides responsive sizing for different screen sizes


void main() {
  runApp(const MyApp()); // Runs the MyApp widget
}

// MyApp is a StatelessWidget that defines the overall structure of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor for MyApp widget

  @override
  Widget build(BuildContext context) {
    // Sizer widget is used here for responsive UI, adjusting size based on screen size and orientation
    return Sizer(
      builder: (context, orientation, deviceType) => const MaterialApp(
        debugShowCheckedModeBanner: false, // Disables the debug banner in the app
        initialRoute: Approutes.navScreen, // Specifies the initial route to navigate to
        onGenerateRoute: Approutes.generateRoute, // Defines how the routes are generated in the app
      ),
    );
  }
}

