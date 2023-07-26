import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray300,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.amber200,
          width: getHorizontalSize(
            2,
          ),
        ),
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Container(
        height: getSize(
          70,
        ),
        width: getSize(
          70,
        ),
        padding: getPadding(
          all: 4,
        ),
        decoration: AppDecoration.outline6.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage23,
              height: getSize(
                60,
              ),
              width: getSize(
                60,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
