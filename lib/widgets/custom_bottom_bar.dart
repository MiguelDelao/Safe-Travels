import 'package:flutter/material.dart';
import 'package:safetravels/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeTeal300,
      type: BottomBarEnum.Hometeal300,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchBlack900,
      type: BottomBarEnum.Searchblack900,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame7,
      type: BottomBarEnum.Frame7,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMessagesquare,
      type: BottomBarEnum.Messagesquare,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.black90019,
          width: getHorizontalSize(
            1.00,
          ),
          strokeAlign: StrokeAlign.outside,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                26.00,
              ),
              width: getSize(
                26.00,
              ),
              color: ColorConstant.black900,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                26.00,
              ),
              width: getSize(
                26.00,
              ),
              color: ColorConstant.teal300,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          onChanged!(bottomMenuList[index].type);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Hometeal300,
  Searchblack900,
  Frame7,
  Messagesquare,
  User,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
