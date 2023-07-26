import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo90001,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 272,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage53,
            height: getVerticalSize(
              223,
            ),
            width: getHorizontalSize(
              196,
            ),
            alignment: Alignment.center,
            margin: getMargin(
              bottom: 5,
            ),
          ),
        ),
      ),
    );
  }
}
