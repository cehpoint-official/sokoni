import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  const List1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 5,
        right: 5,
      ),
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: getHorizontalSize(
        199,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle3121120x188,
              height: getVerticalSize(
                120,
              ),
              width: getHorizontalSize(
                188,
              ),
              margin: getMargin(
                top: 4,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 80,
            ),
            child: Text(
              "Dec’ 27",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
