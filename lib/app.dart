import 'package:flutter/material.dart';

import 'package:navigation_example/screen/screen_splash.dart';
import 'package:navigation_example/screen/screen_navigation_types.dart';
import 'package:navigation_example/screen/screen_registration.dart';
import 'package:navigation_example/screen/screen_home.dart';

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc pattern example',
      theme: ThemeData(primarySwatch: Colors.blue, buttonColor: Colors.blue),
      // If the 'routes' are used, you DON'T need the home in the MaterialApp.
      // home: SplashScreen(),
      routes: {
        '/': (BuildContext context) => SplashScreen(),
        '/navigation_types': (BuildContext context) => NavigationTypes(),
        '/registration': (BuildContext context) => RegistrationPage()
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'homepage') {
          final Map arguments = settings.arguments;
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
                HomePage(name: arguments["name"], email: arguments["email"]),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        // If you want to try if it works, you have to use a wrong route name whereever you want
        return MaterialPageRoute(
            builder: (BuildContext context) => NavigationTypes());
      },
    );
  }
}
