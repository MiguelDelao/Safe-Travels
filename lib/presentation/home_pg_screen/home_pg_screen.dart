import 'package:flutter/material.dart';
import 'package:vaughn_s_application6/widgets/navbar.dart';
import 'package:vaughn_s_application6/core/app_export.dart';

class HomePgScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
        child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  100.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          bottom: 13,
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
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
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
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  27.00,
                ),
                width: getHorizontalSize(
                  283.00,
                ),
                margin: getMargin(
                  top: 10,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "The Best Travels, ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "Easily Located",
                              style: TextStyle(
                                color: ColorConstant.green600Ce,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "The Best Travels, ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "Easily Located",
                              style: TextStyle(
                                color: ColorConstant.green600Ce,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
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
                width: size.width,
                margin: getMargin(
                  top: 1,
                  bottom: 5,
                ),
                padding: getPadding(
                  left: 30,
                  right: 30,
                ),
                decoration: AppDecoration.outlineTeal300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 20,
                      ),
                      child: Text(
                        "Countries",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium18Green600ce,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        184.00,
                      ),
                      width: getHorizontalSize(
                        360.00,
                      ),
                      margin: getMargin(
                        left: 6,
                        top: 20,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPexelsphotoby181x360,
                            height: getVerticalSize(
                              181.00,
                            ),
                            width: getHorizontalSize(
                              360.00,
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
                              margin: getMargin(
                                top: 3,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 30,
                                right: 18,
                                bottom: 30,
                              ),
                              decoration: AppDecoration
                                  .gradientBlack90000Black900
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      24.00,
                                    ),
                                    width: getHorizontalSize(
                                      78.00,
                                    ),
                                    margin: getMargin(
                                      top: 76,
                                      bottom: 19,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "MALAYSIA",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16WhiteA700,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "MALAYSIA",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16WhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      27.00,
                                    ),
                                    width: getHorizontalSize(
                                      24.00,
                                    ),
                                    margin: getMargin(
                                      left: 157,
                                      top: 93,
                                    ),
                                    decoration: BoxDecoration(),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      50.00,
                                    ),
                                    width: getHorizontalSize(
                                      35.00,
                                    ),
                                    margin: getMargin(
                                      left: 26,
                                      top: 47,
                                      right: 3,
                                      bottom: 22,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 6,
                                              right: 6,
                                              bottom: 4,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "2.1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold8,
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationWhiteA70026x24,
                                                  height: getVerticalSize(
                                                    26.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    23.00,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: getPadding(
                                              left: 6,
                                              top: 4,
                                              right: 6,
                                              bottom: 4,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlack9003f1
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                  ),
                                                  child: Text(
                                                    "2.1",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold8,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationWhiteA70026x24,
                                                  height: getVerticalSize(
                                                    26.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    23.00,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        179.00,
                      ),
                      width: getHorizontalSize(
                        360.00,
                      ),
                      margin: getMargin(
                        left: 6,
                        top: 25,
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
                            ColorConstant.black900,
                            ColorConstant.black900,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        179.00,
                      ),
                      width: getHorizontalSize(
                        360.00,
                      ),
                      margin: getMargin(
                        left: 6,
                        top: 31,
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
                            ColorConstant.black900,
                            ColorConstant.black900,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
