import 'package:flutter/material.dart';
import 'package:safetravels/core/app_export.dart';
import 'package:safetravels/presentation/home_lt_page/home_lt_page.dart';
import 'package:safetravels/presentation/search_page/search_page.dart';
import 'package:safetravels/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeLtContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeLtPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Hometeal300:
        return AppRoutes.homeLtPage;
      case BottomBarEnum.Searchblack900:
        return AppRoutes.searchPage;
      case BottomBarEnum.Frame7:
        return "/";
      case BottomBarEnum.Messagesquare:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeLtPage:
        return HomeLtPage();
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }

  @override
  void onInit(BuildContext context) {}
}
