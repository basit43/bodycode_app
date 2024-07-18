import 'package:bodycode/utils/routes/rotes_named.dart';
import 'package:bodycode/views/home.dart';
import 'package:bodycode/views/navigations/beforeTextScreen.dart';
import 'package:flutter/material.dart';

import '../../views/Splash_Screen.dart';
import '../../views/navigations/secondScreen.dart';
import '../../views/navigations/textScreen.dart';
import '../../views/navigations/thirdScreen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.secondScreen:
        final parentScreen = settings.arguments as String;
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                SecondScreen(parentScreen: parentScreen));
      case RoutesName.thirdScreen:
        final parentScreen = settings.arguments as String;
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                ThirdScreen(parentScreen: parentScreen));

      case RoutesName.beforeTextScreen:
        final parentScreen = settings.arguments as String;
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                BeforeTextScreen(parentScreen: parentScreen));

      case RoutesName.textScreen:
        print('current route name ${settings.name}');
        final parentScreen = settings.arguments as String;
        print('And parent screen is $parentScreen');
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                TextScreen(parentScreen: parentScreen));
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
