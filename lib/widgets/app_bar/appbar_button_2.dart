import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarButton2 extends StatelessWidget {
  AppbarButton2({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          width: getHorizontalSize(
            130,
          ),
          height: getVerticalSize(
            37,
          ),
          text: "Jonny",
          leftIcon: Container(
            margin: getMargin(
              right: 30,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgArrowleft,
            ),
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: theme.textTheme.titleLarge!,
        ),
      ),
    );
  }
}
