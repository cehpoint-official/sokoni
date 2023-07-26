import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class SearchOneItemWidget extends StatelessWidget {
  const SearchOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 3,
      ),
      decoration: AppDecoration.fill7.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: theme.colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Container(
              height: getVerticalSize(
                83,
              ),
              width: getHorizontalSize(
                94,
              ),
              padding: getPadding(
                left: 16,
                top: 2,
                right: 16,
                bottom: 2,
              ),
              decoration: AppDecoration.fill1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage49,
                    height: getVerticalSize(
                      75,
                    ),
                    width: getHorizontalSize(
                      58,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 13,
              top: 33,
              bottom: 27,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
