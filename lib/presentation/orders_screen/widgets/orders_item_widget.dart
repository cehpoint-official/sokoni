import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class OrdersItemWidget extends StatelessWidget {
  const OrdersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 9,
          top: 5,
          right: 9,
          bottom: 5,
        ),
        decoration: AppDecoration.fill1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle3081,
              height: getVerticalSize(
                157,
              ),
              width: getHorizontalSize(
                163,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  6,
                ),
              ),
              margin: getMargin(
                top: 3,
              ),
            ),
            Container(
              width: getHorizontalSize(
                158,
              ),
              margin: getMargin(
                left: 1,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "T-Shirts\n",
                      style: theme.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "Lorem ipsum dolor si..\n",
                      style: CustomTextStyles.bodyLarge16_1,
                    ),
                    TextSpan(
                      text: "TZS 250",
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.bodyLargeGreen80001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
