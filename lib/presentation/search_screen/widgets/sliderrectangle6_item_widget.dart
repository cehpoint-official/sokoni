import 'package:flutter/material.dart' hide SearchController;
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Sliderrectangle6ItemWidget extends StatelessWidget {
  const Sliderrectangle6ItemWidget({Key? key})
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
