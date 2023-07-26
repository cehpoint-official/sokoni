import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewgroup22ItemWidget extends StatelessWidget {
  const Chipviewgroup22ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 23,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Noida",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
      ),
      deleteIcon: CustomImageView(
        svgPath: ImageConstant.imgArrowrightBlack9000117x17,
        height: getSize(
          17,
        ),
        width: getSize(
          17,
        ),
        margin: getMargin(
          left: 21,
        ),
      ),
      onDeleted: () {},
      selected: false,
      backgroundColor: appTheme.gray400,
      selectedColor: appTheme.greenA100,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
