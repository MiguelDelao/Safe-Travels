import 'package:flutter/material.dart';
import 'package:zeus/core/app_export.dart';
import 'package:zeus/Globals.dart' as globals;

class SafetyPgScreen extends StatefulWidget {
  @override
  State<SafetyPgScreen> createState() => _SafetyPgScreenState();
}

class _SafetyPgScreenState extends State<SafetyPgScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                90,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
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
            Stack(
              children: [
                RichText(
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
              Expanded(
                child: ListView(
                  children: globals.CountryCards,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
