import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class SaveFourItemWidget extends StatelessWidget {
  const SaveFourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 9,
        top: 5,
        right: 9,
        bottom: 5,
      ),
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getVerticalSize(
              157,
            ),
            width: getHorizontalSize(
              163,
            ),
            margin: getMargin(
              top: 3,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle3081,
                  height: getVerticalSize(
                    157,
                  ),
                  width: getHorizontalSize(
                    163,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      6,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    margin: getMargin(
                      right: 3,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getSize(
                              23,
                            ),
                            width: getSize(
                              23,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.blueA400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  6,
                                ),
                              ),
                              border: Border.all(
                                color: appTheme.gray20004,
                                width: getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCheckmark24x24,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              158,
            ),
            margin: getMargin(
              left: 1,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "T-Shirts\n",
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "Lorem ipsum dolor si..\n",
                    style: CustomTextStyles.bodyLarge16_1,
                  ),
                  TextSpan(
                    text: "TZS 250",
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyLargeGreen80001,
            ),
          ),
        ],
      ),
    );
  }
}
