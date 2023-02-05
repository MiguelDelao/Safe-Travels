import 'package:flutter/material.dart';
import 'package:zeus/core/app_export.dart';

class HomePgScreen extends StatefulWidget {
  @override
  State<HomePgScreen> createState() => _HomePgScreenState();
}

class _HomePgScreenState extends State<HomePgScreen> {
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
                    child: Text("insert"),
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
