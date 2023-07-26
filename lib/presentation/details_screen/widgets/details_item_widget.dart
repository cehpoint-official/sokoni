import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class DetailsItemWidget extends StatelessWidget {
  const DetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 18,
          top: 12,
          right: 18,
          bottom: 12,
        ),
        decoration: AppDecoration.fill1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: getPadding(
                top: 2,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgStarBlack90001,
                          height: getSize(
                            16,
                          ),
                          width: getSize(
                            16,
                          ),
                          margin: getMargin(
                            bottom: 3,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                          ),
                          child: Text(
                            "4.4(202 Bookings)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodyLargeGray900b2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMditagmultiple,
                          height: getVerticalSize(
                            26,
                          ),
                          width: getHorizontalSize(
                            28,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 4,
                            bottom: 3,
                          ),
                          child: Text(
                            "Save 20% on every order",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodyLargeBlack90016,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Text(
                      "TZS400 . 1 hrs",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 12,
                    ),
                    child: Text(
                      "View Details",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumBlue700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 1,
                right: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle3158,
                    height: getVerticalSize(
                      101,
                    ),
                    width: getHorizontalSize(
                      113,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        6,
                      ),
                    ),
                  ),
                  CustomOutlinedButton(
                    width: getHorizontalSize(
                      127,
                    ),
                    height: getVerticalSize(
                      45,
                    ),
                    text: "Get Best Price",
                    margin: getMargin(
                      top: 9,
                    ),
                    buttonStyle: CustomButtonStyles.outlineGray200,
                    buttonTextStyle: CustomTextStyles.titleMediumGray20004,
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
