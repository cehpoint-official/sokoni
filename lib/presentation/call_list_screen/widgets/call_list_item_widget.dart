import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CallListItemWidget extends StatelessWidget {
  CallListItemWidget({
    Key? key,
    this.onTapColumncallcount,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumncallcount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgClock,
              height: getSize(
                20,
              ),
              width: getSize(
                20,
              ),
              margin: getMargin(
                top: 3,
                bottom: 28,
              ),
            ),
            GestureDetector(
              onTap: () {
                onTapColumncallcount?.call();
              },
              child: Padding(
                padding: getPadding(
                  left: 21,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Call 1",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleLargeBlack90001_1,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "+27 11111111111",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeBlack9000118,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: getPadding(
                top: 5,
                bottom: 29,
              ),
              child: Text(
                "20:20",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.bodyMediumBlack9000115,
              ),
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            top: 29,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 20,
                width: 20,
                margin: getMargin(
                  top: 3,
                  bottom: 28,
                ),
                padding: getPadding(
                  all: 3,
                ),
                decoration: IconButtonStyleHelper.fillGreen80001,
                child: CustomImageView(
                  svgPath: ImageConstant.imgIcoutlinecallmade,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 21,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Call 1",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleLargeBlack90001_1,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "+27 11111111111",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeBlack9000118,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 5,
                  bottom: 29,
                ),
                child: Text(
                  "20:20",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.bodyMediumBlack9000115,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
