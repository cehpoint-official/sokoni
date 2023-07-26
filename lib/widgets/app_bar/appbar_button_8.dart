import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarButton8 extends StatelessWidget {
  AppbarButton8({
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
            152,
          ),
          height: getVerticalSize(
            37,
          ),
          text: "Settings",
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
