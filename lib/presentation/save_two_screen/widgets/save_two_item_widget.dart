import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SaveTwoItemWidget extends StatelessWidget {
  const SaveTwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 5,
        top: 4,
        right: 5,
        bottom: 4,
      ),
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getVerticalSize(
              121,
            ),
            width: getHorizontalSize(
              188,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle3121120x188,
                  height: getVerticalSize(
                    121,
                  ),
                  width: getHorizontalSize(
                    188,
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 24,
                  width: 24,
                  margin: getMargin(
                    top: 5,
                    right: 6,
                  ),
                  padding: getPadding(
                    all: 3,
                  ),
                  decoration: IconButtonStyleHelper.outlineGray20004,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCheckmarkPrimary24x24,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 7,
            ),
            child: Text(
              "3 BHK Flat",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 10,
            ),
            child: Text(
              "TZS2.58 Cr | 2575 sqft",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleMedium16,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 6,
            ),
            child: Text(
              "Sector 107, Noida",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 4,
              bottom: 9,
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
