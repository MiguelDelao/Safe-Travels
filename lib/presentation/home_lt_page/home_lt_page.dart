import '../home_lt_page/widgets/home_lt_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:safetravels/core/app_export.dart';
import 'package:safetravels/widgets/custom_checkbox.dart';

// ignore_for_file: must_be_immutable
class HomeLtPage extends StatelessWidget {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          decoration: AppDecoration.outlineBlack9003f,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                child: Column(
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
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
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
                    Container(
                      height: getVerticalSize(
                        637.00,
                      ),
                      width: size.width,
                      margin: getMargin(
                        top: 1,
                        bottom: 5,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: getVerticalSize(
                                410.00,
                              ),
                              width: size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorConstant.teal300,
                                  width: getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 34,
                                right: 30,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      right: 3,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Countries",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium18Green600ce,
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                            bottom: 3,
                                          ),
                                          child: Text(
                                            "See All",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsLight1225,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgChevronsright,
                                          height: getSize(
                                            18.00,
                                          ),
                                          width: getSize(
                                            18.00,
                                          ),
                                          margin: getMargin(
                                            left: 1,
                                            top: 5,
                                            bottom: 3,
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
                                      360.00,
                                    ),
                                    margin: getMargin(
                                      left: 3,
                                      top: 15,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgPexelsphotoby160x360,
                                          height: getVerticalSize(
                                            160.00,
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
                                              top: 20,
                                              bottom: 20,
                                            ),
                                            decoration: AppDecoration
                                                .gradientBlack90000Black900
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                CustomCheckbox(
                                                  text: "MALAYSIA",
                                                  iconSize: 24,
                                                  value: checkbox,
                                                  padding: getPadding(
                                                    top: 88,
                                                  ),
                                                  onChange: (value) {
                                                    checkbox = value;
                                                  },
                                                ),
                                                Container(
                                                  margin: getMargin(
                                                    top: 66,
                                                    bottom: 2,
                                                  ),
                                                  padding: getPadding(
                                                    left: 6,
                                                    top: 4,
                                                    right: 6,
                                                    bottom: 4,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f1
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 3,
                                                        ),
                                                        child: Text(
                                                          "2.1",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold8,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocationWhiteA700,
                                                        height: getVerticalSize(
                                                          26.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          23.00,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 13,
                                    ),
                                    child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: getVerticalSize(
                                            23.00,
                                          ),
                                        );
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return HomeLtItemWidget();
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 18,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getVerticalSize(
                                            30.00,
                                          ),
                                          width: getHorizontalSize(
                                            28.00,
                                          ),
                                          margin: getMargin(
                                            bottom: 4,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 7,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "Overall Safety Rating: ",
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .green600Ce,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "2.56",
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .green600Ce,
                                                    fontSize: getFontSize(
                                                      18,
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
            ],
          ),
        ),
      ),
    );
  }
}
