import 'package:flutter/material.dart';
import 'package:zeus/core/app_export.dart';
import 'package:zeus/widgets/custom_button.dart';

class HomePgCountryPgScreen extends StatelessWidget {
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
                  39.00,
                ),
                width: size.width,
                padding: getPadding(
                  top: 1,
                  bottom: 1,
                ),
                decoration: AppDecoration.outlineBlack90019,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
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
                      alignment: Alignment.bottomCenter,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    24.00,
                  ),
                  width: getHorizontalSize(
                    84.00,
                  ),
                  margin: getMargin(
                    left: 39,
                    top: 15,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "MALAYSIA",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16WhiteA700,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgChevronsright,
                                height: getVerticalSize(
                                  18.00,
                                ),
                                width: getHorizontalSize(
                                  17.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                ),
                                child: Text(
                                  "Back",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight1225,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  331.00,
                ),
                width: getHorizontalSize(
                  354.00,
                ),
                margin: getMargin(
                  top: 14,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 12,
                          right: 25,
                          bottom: 2,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 28,
                                  ),
                                  child: Text(
                                    "MALAYSIA",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16WhiteA700,
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    bottom: 2,
                                  ),
                                  padding: getPadding(
                                    left: 6,
                                    top: 4,
                                    right: 6,
                                    bottom: 4,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003f1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 3,
                                          ),
                                          child: Text(
                                            "2.1",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsSemiBold8,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgLocationWhiteA700,
                                        height: getVerticalSize(
                                          26.00,
                                        ),
                                        width: getHorizontalSize(
                                          22.00,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                top: 159,
                              ),
                              child: Text(
                                "AUSTRALIA",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16WhiteA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          331.00,
                        ),
                        width: getHorizontalSize(
                          354.00,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPexelsphotoby330x354,
                              height: getVerticalSize(
                                330.00,
                              ),
                              width: getHorizontalSize(
                                354.00,
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
                                  bottom: 1,
                                ),
                                padding: getPadding(
                                  left: 14,
                                  top: 16,
                                  right: 14,
                                  bottom: 16,
                                ),
                                decoration: AppDecoration
                                    .gradientBlack90000Black900
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 270,
                                      ),
                                      child: Text(
                                        "MALAYSIA",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium18WhiteA700,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: getVerticalSize(
                                        49.00,
                                      ),
                                      width: getHorizontalSize(
                                        23.00,
                                      ),
                                      margin: getMargin(
                                        top: 215,
                                        bottom: 32,
                                      ),
                                      decoration: BoxDecoration(),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 28,
                                        top: 240,
                                        right: 3,
                                        bottom: 7,
                                      ),
                                      padding: getPadding(
                                        left: 5,
                                        top: 4,
                                        right: 5,
                                        bottom: 4,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBlack9003f1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              12.00,
                                            ),
                                            width: getHorizontalSize(
                                              9.00,
                                            ),
                                            margin: getMargin(
                                              top: 3,
                                              right: 6,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "2.1",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold8,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "2.1",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold8,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              26.00,
                                            ),
                                            width: getHorizontalSize(
                                              24.00,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationWhiteA70026x24,
                                                  height: getVerticalSize(
                                                    26.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    24.00,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationWhiteA70026x24,
                                                  height: getVerticalSize(
                                                    26.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    24.00,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
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
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  163.00,
                ),
                width: getHorizontalSize(
                  350.00,
                ),
                margin: getMargin(
                  top: 30,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getVerticalSize(
                          24.00,
                        ),
                        width: getHorizontalSize(
                          71.00,
                        ),
                        margin: getMargin(
                          left: 11,
                          top: 25,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "CROATIA",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16WhiteA700,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "CROATIA",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16WhiteA700,
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
                          left: 12,
                          top: 22,
                          right: 12,
                          bottom: 22,
                        ),
                        decoration: AppDecoration.outlineGray40072.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getVerticalSize(
                                      26.00,
                                    ),
                                    width: getHorizontalSize(
                                      19.00,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgMusic,
                                    height: getVerticalSize(
                                      30.00,
                                    ),
                                    width: getHorizontalSize(
                                      27.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 10,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Safety Rating: 1.2",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                203.00,
                              ),
                              margin: getMargin(
                                left: 8,
                                top: 27,
                                bottom: 11,
                              ),
                              child: Text(
                                "Description of place insert here\nsafety",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          348.00,
                        ),
                        margin: getMargin(
                          top: 67,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray4007f,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getVerticalSize(
                          66.00,
                        ),
                        width: getHorizontalSize(
                          1.00,
                        ),
                        margin: getMargin(
                          left: 84,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray4007f,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: getVerticalSize(
                          66.00,
                        ),
                        width: getHorizontalSize(
                          1.00,
                        ),
                        margin: getMargin(
                          right: 152,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray4007f,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 16,
                    right: 34,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        height: 37,
                        width: 137,
                        text: "Add to Destinations",
                        variant: ButtonVariant.OutlineGreen600,
                        fontStyle: ButtonFontStyle.PoppinsMedium11Green600,
                      ),
                      CustomButton(
                        height: 37,
                        width: 119,
                        text: "Book Travel",
                        margin: getMargin(
                          left: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
