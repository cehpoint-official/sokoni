import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  ListclockItemWidget({
    Key? key,
    this.onTapRowclock,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRowclock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowclock?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgClockBlack90001,
            height: getVerticalSize(
              18,
            ),
            width: getHorizontalSize(
              20,
            ),
            margin: getMargin(
              bottom: 5,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleLargeBlack9000120,
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 1,
              bottom: 3,
            ),
            child: Text(
              "Clear",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyLargeGray40016,
            ),
          ),
        ],
      ),
    );
  }
}
