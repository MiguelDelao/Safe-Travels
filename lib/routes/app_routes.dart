import 'package:flutter/material.dart';
import 'package:safetravels/presentation/home_lt_container_screen/home_lt_container_screen.dart';
import 'package:safetravels/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String searchPage = '/search_page';

  static const String homeLtPage = '/home_lt_page';

  static const String homeLtContainerScreen = '/home_lt_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeLtContainerScreen: (context) => HomeLtContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
