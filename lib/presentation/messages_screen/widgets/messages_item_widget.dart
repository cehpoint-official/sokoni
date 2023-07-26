import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class MessagesItemWidget extends StatelessWidget {
  MessagesItemWidget({
    Key? key,
    this.onTapColumntype,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumntype;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumntype?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: getSize(
                  44,
                ),
                padding: getPadding(
                  left: 16,
                  top: 8,
                  right: 16,
                  bottom: 8,
                ),
                decoration: AppDecoration.txtFill.copyWith(
                  borderRadius: BorderRadiusStyle.txtCircleBorder22,
                ),
                child: Text(
                  "J",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleLargeInter,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 7,
                  top: 11,
                  bottom: 6,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleLargeBlack90001SemiBold,
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgIcroundcall,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                margin: getMargin(
                  top: 10,
                  bottom: 10,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 11,
                  bottom: 13,
                ),
                child: Text(
                  "Call",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumIndigo600,
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 48,
              top: 4,
              right: 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomOutlinedButton(
                  width: getHorizontalSize(
                    131,
                  ),
                  height: getVerticalSize(
                    43,
                  ),
                  text: "Ask Quotation",
                  buttonStyle: CustomButtonStyles.outlineBlue200,
                  buttonTextStyle: CustomTextStyles.bodyLargeBlue200,
                ),
                CustomOutlinedButton(
                  width: getHorizontalSize(
                    135,
                  ),
                  height: getVerticalSize(
                    41,
                  ),
                  text: "Request Reply",
                  margin: getMargin(
                    left: 7,
                    top: 1,
                    bottom: 1,
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlue200,
                  buttonTextStyle: CustomTextStyles.bodyLargeBlue200,
                ),
                Padding(
                  padding: getPadding(
                    left: 26,
                    top: 27,
                  ),
                  child: Text(
                    "11:50AM",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyMediumBluegray90001,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
