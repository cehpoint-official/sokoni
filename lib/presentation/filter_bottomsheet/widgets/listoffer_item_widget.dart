import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class ListofferItemWidget extends StatelessWidget {
  const ListofferItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        123,
      ),
      padding: getPadding(
        left: 29,
        top: 10,
        right: 29,
        bottom: 10,
      ),
      decoration: AppDecoration.txtOutline4.copyWith(
        borderRadius: BorderRadiusStyle.txtRoundedBorder4,
      ),
      child: Text(
        "",
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: CustomTextStyles.bodyLargePrimary,
      ),
    );
  }
}
