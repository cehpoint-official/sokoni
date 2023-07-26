import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class OrdersOneItemWidget extends StatelessWidget {
  const OrdersOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: getPadding(
            left: 1,
            top: 9,
            right: 1,
            bottom: 9,
          ),
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage101,
                height: getSize(
                  117,
                ),
                width: getSize(
                  117,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 33,
                  bottom: 38,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Arriving Today",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodyLargeGreen80002,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "The quick brown fox jumps over the ...",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgArrowrightBlack9000116x7,
                height: getVerticalSize(
                  16,
                ),
                width: getHorizontalSize(
                  7,
                ),
                margin: getMargin(
                  left: 29,
                  top: 50,
                  bottom: 50,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: getMargin(
            top: 14,
          ),
          padding: getPadding(
            left: 11,
            top: 20,
            right: 11,
            bottom: 20,
          ),
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage76,
                height: getVerticalSize(
                  95,
                ),
                width: getHorizontalSize(
                  84,
                ),
                margin: getMargin(
                  left: 2,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                  bottom: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 5,
                          ),
                          child: Text(
                            "Your order was delivered on July 25th.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodyLarge16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlack9000116x7,
                          height: getVerticalSize(
                            16,
                          ),
                          width: getHorizontalSize(
                            7,
                          ),
                          margin: getMargin(
                            left: 18,
                            top: 30,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "The quick brown fox jumps over the ...",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
