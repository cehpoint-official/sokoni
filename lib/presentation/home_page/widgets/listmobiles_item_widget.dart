import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class ListmobilesItemWidget extends StatelessWidget {
  ListmobilesItemWidget({
    Key? key,
    this.onTapImgImagethirteen,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImagethirteen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 5,
        right: 5,
      ),
      decoration: AppDecoration.fill3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: getHorizontalSize(
        120,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage48,
            height: getSize(
              109,
            ),
            width: getSize(
              109,
            ),
            onTap: () {
              onTapImgImagethirteen?.call();
            },
          ),
          Padding(
            padding: getPadding(
              left: 28,
              bottom: 5,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
