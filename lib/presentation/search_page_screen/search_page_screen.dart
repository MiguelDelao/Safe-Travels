import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:zeus/CountryInfo.dart';
import 'package:zeus/SearchBar.dart';
import 'package:zeus/core/app_export.dart';
import 'package:zeus/logic.dart';
import 'package:zeus/widgets/custom_button.dart';

class SearchPageScreen extends StatefulWidget {
  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> {
  CountryInfo selectedCountry = new CountryInfo();

  String countryName = 'United States';

  String population = '3,000,000';

  String abbreviation = 'USA';

  String currency = 'USD';

  String language = 'English';

  String advisoryMessage = "";

  String score = "0";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  //left: 0,
                  top: 13,
                  //right: 0,
                  bottom: 13,
                ),
                decoration: AppDecoration.outlineBlack90019,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(top: 20),
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
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup20,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SearchBar(
                    onSelect: (countryvalue) {
                      setState(() {
                        showDialog(
                          barrierDismissible: false,
                          builder: (ctx) {
                            return Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            );
                          },
                          context: context,
                        );
                      });
                      try {
                        getCountryInfo(countryvalue).then((value) {
                          setState(() {
                            selectedCountry = value;

                            countryName = selectedCountry.name;
                            population = selectedCountry.population;
                            abbreviation = selectedCountry.alphaCode;
                            currency = selectedCountry.currency;
                            language = selectedCountry.language;
                            advisoryMessage = selectedCountry.advisoryMessage;
                            score = selectedCountry.advisoryScore;

                            Navigator.of(context).pop();
                          });
                        });
                      } catch (e) {
                        print('INVALID COUNTRY');
                      }
                    },
                  )),
              Container(
                height: getVerticalSize(
                  379.00,
                ),
                width: getHorizontalSize(
                  356.00,
                ),
                margin: getMargin(
                  top: 30,
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
                                advisoryMessage,
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
                              url: 'https://countryflagsapi.com/png/' +
                                  countryName,
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
                              border: Border.all(color: Colors.black),
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
                                bottom: 10,
                              ),
                              child: Text(
                                "ISO Alpha-3: " +
                                    abbreviation +
                                    "\nLanguage: " +
                                    language +
                                    "\nPopulation: " +
                                    population +
                                    "\nCurrency: " +
                                    currency,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium15,
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
                          "Safety Information",
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
                                          countryName,
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
                                      countryName + " ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12,
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
                          ("Safety Rating: " + score),
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
