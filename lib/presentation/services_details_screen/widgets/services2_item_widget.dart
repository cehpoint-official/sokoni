import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Services2ItemWidget extends StatelessWidget {
  const Services2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 5,
        top: 7,
        right: 5,
        bottom: 7,
      ),
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3121,
            height: getVerticalSize(
              121,
            ),
            width: getHorizontalSize(
              188,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Text(
              "Lorem ipsum dolor sit ...",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyLarge16,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Text(
              "TZS3000 . 2 hrs",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 9,
            ),
            child: Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgEye,
                  height: getVerticalSize(
                    12,
                  ),
                  width: getHorizontalSize(
                    68,
                  ),
                  margin: getMargin(
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                    top: 1,
                    bottom: 1,
                  ),
                  child: Text(
                    "(5.7K)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgSettings,
                  height: getSize(
                    13,
                  ),
                  width: getSize(
                    13,
                  ),
                  margin: getMargin(
                    left: 23,
                    top: 1,
                  ),
                ),
                Text(
                  "40% off",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeBluegray400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
