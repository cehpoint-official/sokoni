import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class ProductDetailsDialog extends StatelessWidget {
  ProductDetailsDialog({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: getHorizontalSize(
        349,
      ),
      padding: getPadding(
        left: 21,
        top: 35,
        right: 21,
        bottom: 35,
      ),
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "What is the required Quantity?",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleMedium,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(
                top: 62,
              ),
              child: Text(
                "Quantity",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.labelMediumBlack90001,
              ),
            ),
          ),
          CustomDropDown(
            icon: Container(
              margin: getMargin(
                left: 12,
                right: 7,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowdownBlack90001,
              ),
            ),
            hintText: "Enter Quantity",
            margin: getMargin(
              top: 5,
              right: 7,
            ),
            textStyle: CustomTextStyles.bodySmallBlack90001_1,
            items: dropdownItemList,
            contentPadding: getPadding(
              left: 18,
              top: 13,
              bottom: 13,
            ),
            defaultBorderDecoration: DropDownStyleHelper.outlineBlack90001,
            enabledBorderDecoration: DropDownStyleHelper.outlineBlack90001,
            focusedBorderDecoration: DropDownStyleHelper.outlineBlack90001,
            disabledBorderDecoration: DropDownStyleHelper.outlineBlack90001,
            onChanged: (value) {},
          ),
          Padding(
            padding: getPadding(
              top: 62,
              bottom: 63,
            ),
            child: Text(
              "Get Best Price",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleLargeSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
