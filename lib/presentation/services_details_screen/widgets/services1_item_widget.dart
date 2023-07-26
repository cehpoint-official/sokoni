import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Services1ItemWidget extends StatelessWidget {
  const Services1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: getSize(
            16,
          ),
          width: getSize(
            16,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgStarBlack90001,
                height: getSize(
                  8,
                ),
                width: getSize(
                  8,
                ),
                alignment: Alignment.bottomRight,
                margin: getMargin(
                  bottom: 3,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: getVerticalSize(
            6,
          ),
          width: getHorizontalSize(
            152,
          ),
          margin: getMargin(
            left: 1,
            top: 5,
            bottom: 4,
          ),
          decoration: BoxDecoration(
            color: appTheme.lightGreen900,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                3,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 6,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
