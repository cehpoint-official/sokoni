import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage23,
        height: getSize(
          280,
        ),
        width: getSize(
          280,
        ),
      ),
    );
  }
}
