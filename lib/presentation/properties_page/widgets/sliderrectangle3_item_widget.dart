import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Sliderrectangle3ItemWidget extends StatelessWidget {
  const Sliderrectangle3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle88150x403,
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
