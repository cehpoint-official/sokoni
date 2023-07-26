import 'package:flutter/material.dart' hide SearchController;
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Container(
        height: getVerticalSize(
          282,
        ),
        width: getHorizontalSize(
          188,
        ),
        padding: getPadding(
          left: 8,
          top: 6,
          right: 8,
          bottom: 6,
        ),
        decoration: AppDecoration.fill1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle3081160x163,
              height: getVerticalSize(
                160,
              ),
              width: getHorizontalSize(
                163,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  6,
                ),
              ),
              alignment: Alignment.topLeft,
              margin: getMargin(
                left: 1,
                top: 2,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: getPadding(
                  left: 1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        158,
                      ),
                      margin: getMargin(
                        left: 2,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Smartphone\n",
                              style: theme.textTheme.bodyMedium,
                            ),
                            TextSpan(
                              text: "Lorem ipsum dolor si..\n",
                              style: CustomTextStyles.bodyLarge16_1,
                            ),
                            TextSpan(
                              text: "TZS 9000-10,000\nShipping per box:TZS50",
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "70% Off              ",
                              style: CustomTextStyles.bodyLargeGreen8000116,
                            ),
                            TextSpan(
                              text: " 20 orders",
                              style: CustomTextStyles.bodyMediumGray400,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
