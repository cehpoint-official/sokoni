import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewframefo4ItemWidget extends StatelessWidget {
  const Chipviewframefo4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 15,
        right: 15,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "1BHK",
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
