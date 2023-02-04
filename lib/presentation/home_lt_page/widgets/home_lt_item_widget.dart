import 'package:flutter/material.dart';
import 'package:safetravels/core/app_export.dart';

// ignore: must_be_immutable
class HomeLtItemWidget extends StatelessWidget {
  HomeLtItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        163.00,
      ),
      width: getHorizontalSize(
        360.00,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPexelsphotoby158x360,
            height: getVerticalSize(
              158.00,
            ),
            width: getHorizontalSize(
              360.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                15.00,
              ),
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                top: 4,
              ),
              padding: getPadding(
                left: 18,
                top: 12,
                right: 18,
                bottom: 12,
              ),
              decoration: AppDecoration.gradientBlack90000Black900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 108,
                      bottom: 1,
                    ),
                    child: Text(
                      "AUSTRALIA",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16WhiteA700,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 84,
                      right: 5,
                    ),
                    padding: getPadding(
                      left: 6,
                      top: 4,
                      right: 6,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.outlineBlack9003f1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            right: 5,
                          ),
                          child: Text(
                            "3.2",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold8,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLocationWhiteA700,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
