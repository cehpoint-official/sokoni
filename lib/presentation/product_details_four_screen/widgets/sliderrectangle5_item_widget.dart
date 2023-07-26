import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Sliderrectangle5ItemWidget extends StatelessWidget {
  const Sliderrectangle5ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle3048,
        height: getVerticalSize(
          241,
        ),
        width: getHorizontalSize(
          428,
        ),
      ),
    );
  }
}
