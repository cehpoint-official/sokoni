import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Sliderrectangle7ItemWidget extends StatelessWidget {
  const Sliderrectangle7ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle64,
        height: getVerticalSize(
          150,
        ),
        width: getHorizontalSize(
          403,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            8,
          ),
        ),
      ),
    );
  }
}
