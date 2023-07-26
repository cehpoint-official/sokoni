import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesOne1ItemWidget extends StatelessWidget {
  const CategoriesOne1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 7,
        top: 8,
        right: 7,
        bottom: 8,
      ),
      decoration:
          AppDecoration.gradientnamelightblue300nameonErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3081,
            height: getVerticalSize(
              145,
            ),
            width: getHorizontalSize(
              163,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                6,
              ),
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: getPadding(
              top: 13,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
              bottom: 5,
            ),
            child: Text(
              "Upto 70% Off",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleLargeSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
