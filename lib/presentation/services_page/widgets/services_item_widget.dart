import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class ServicesItemWidget extends StatelessWidget {
  ServicesItemWidget({
    Key? key,
    this.onTapColumnelectrici,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumnelectrici;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapColumnelectrici?.call();
        },
        child: Container(
          padding: getPadding(
            left: 9,
            top: 7,
            right: 9,
            bottom: 7,
          ),
          decoration: AppDecoration.fill2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage37,
                height: getVerticalSize(
                  45,
                ),
                width: getHorizontalSize(
                  53,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Text(
                  "Electricians",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
