import 'package:flutter/material.dart';
import 'package:vaughn_s_application6/presentation/search_page_screen/search_page_screen.dart';
import 'package:vaughn_s_application6/presentation/home_pg_country_pg_screen/home_pg_country_pg_screen.dart';
import 'package:vaughn_s_application6/presentation/home_pg_screen/home_pg_screen.dart';
import 'package:vaughn_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String searchPageScreen = '/search_page_screen';

  static const String homePgCountryPgScreen = '/home_pg_country_pg_screen';

  static const String homePgScreen = '/home_pg_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    searchPageScreen: (context) => SearchPageScreen(),
    homePgCountryPgScreen: (context) => HomePgCountryPgScreen(),
    homePgScreen: (context) => HomePgScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
