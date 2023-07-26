import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  const ListpriceItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        201,
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
