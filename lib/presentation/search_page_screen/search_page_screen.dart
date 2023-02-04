import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:vaughn_s_application6/core/app_export.dart';
import 'package:vaughn_s_application6/widgets/custom_button.dart';

class SearchPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                padding: getPadding(
                  left: 109,
                  top: 13,
                  right: 109,
                  bottom: 13,
                ),
                decoration: AppDecoration.outlineBlack90019,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 22,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Safe",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  34,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "Travels",
                              style: TextStyle(
                                color: ColorConstant.green600Ce,
                                fontSize: getFontSize(
                                  34,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  358.00,
                ),
                margin: getMargin(
                  left: 35,
                  top: 18,
                  right: 35,
                ),
                padding: getPadding(
                  left: 14,
                  top: 11,
                  right: 14,
                  bottom: 11,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup20,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                      height: getSize(
                        20.00,
                      ),
                      width: getSize(
                        20.00,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 17,
                        right: 220,
                      ),
                      child: Text(
                        "Search ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular1825.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.09,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  379.00,
                ),
                width: getHorizontalSize(
                  356.00,
                ),
                margin: getMargin(
                  top: 86,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: getPadding(
                          top: 33,
                          bottom: 33,
                        ),
                        decoration: AppDecoration.outlineGray40072.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                354.00,
                              ),
                              margin: getMargin(
                                left: 2,
                                top: 32,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray4007f,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 21,
                                top: 13,
                              ),
                              child: Text(
                                "Take normal safety precautions.",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getVerticalSize(
                          160.00,
                        ),
                        width: getHorizontalSize(
                          133.00,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPexelsphotoby,
                              height: getVerticalSize(
                                160.00,
                              ),
                              width: getHorizontalSize(
                                132.00,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  15.00,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  160.00,
                                ),
                                width: getHorizontalSize(
                                  132.00,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(
                                      0.5,
                                      0,
                                    ),
                                    end: Alignment(
                                      0.5,
                                      1,
                                    ),
                                    colors: [
                                      ColorConstant.black90000,
                                      ColorConstant.black900,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: getHorizontalSize(
                          192.00,
                        ),
                        margin: getMargin(
                          top: 44,
                          right: 6,
                        ),
                        padding: getPadding(
                          left: 9,
                          top: 20,
                          right: 9,
                          bottom: 20,
                        ),
                        decoration: AppDecoration.fillBluegray10072.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                173.00,
                              ),
                              margin: getMargin(
                                bottom: 6,
                              ),
                              child: Text(
                                "Argentina is a country located in South America, bordered by Chile to the west, Bolivia and Paraguay to the north, Brazil to the northeast, Uruguay and the South Atlantic Ocean.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsExtraLight9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(
                          bottom: 146,
                        ),
                        child: Text(
                          "Embassy",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium18,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 2,
                          top: 2,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: getVerticalSize(
                                  27.00,
                                ),
                                width: getHorizontalSize(
                                  148.00,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 4,
                                        ),
                                        child: Text(
                                          "Argentina",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium18,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                        width: getHorizontalSize(
                                          148.00,
                                        ),
                                        margin: getMargin(
                                          bottom: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black9007f,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                148.00,
                              ),
                              margin: getMargin(
                                top: 201,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black9007f,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 19,
                                top: 39,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getVerticalSize(
                                      25.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 2,
                                    ),
                                    child: Text(
                                      "Argentina  ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: getPadding(
                          right: 44,
                          bottom: 81,
                        ),
                        child: Text(
                          "Safety Rating: 1.2",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium15,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgMusic,
                      height: getVerticalSize(
                        30.00,
                      ),
                      width: getHorizontalSize(
                        28.00,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: getMargin(
                        left: 152,
                        bottom: 81,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: 37,
                width: 119,
                text: "Add to Home",
                margin: getMargin(
                  top: 29,
                  right: 38,
                  bottom: 5,
                ),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
