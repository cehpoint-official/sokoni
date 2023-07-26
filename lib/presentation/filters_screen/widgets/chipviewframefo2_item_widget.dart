import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewframefo2ItemWidget extends StatelessWidget {
  const Chipviewframefo2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 22,
        right: 22,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Flat",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
