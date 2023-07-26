import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class SearchesItemWidget extends StatelessWidget {
  const SearchesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
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
            bottom: 6,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 8,
            top: 1,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 1,
            bottom: 4,
          ),
          child: Text(
            "Clear",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.bodyLargeGray40016,
          ),
        ),
      ],
    );
  }
}
