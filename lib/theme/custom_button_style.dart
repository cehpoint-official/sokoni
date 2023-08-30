import 'package:sakuni/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue700 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
      );
  static ButtonStyle get fillBlue700TL2 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            2,
          ),
        ),
      );
  static ButtonStyle get fillBlue700TL27 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            27,
          ),
        ),
      );
  static ButtonStyle get fillBlue700TL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static ButtonStyle get fillBlueA40001 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA40001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      );
  static ButtonStyle get fillBlueA40001TL27 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA40001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            27,
          ),
        ),
      );
  static ButtonStyle get fillBluegray200 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray200,
      );
  static ButtonStyle get fillCyan300 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            2,
          ),
        ),
      );
  static ButtonStyle get fillGreenA100 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.greenA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
      );
  static ButtonStyle get fillIndigo90001 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static ButtonStyle get fillIndigo900011 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo90001,
      );
  static ButtonStyle get fillLightblue50 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlue50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
      );
  static ButtonStyle get fillLightgreen50 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
      );
  static ButtonStyle get fillLime500 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lime500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
      );
  static ButtonStyle get fillOrange700 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.orange700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
      );
  static ButtonStyle get fillOrange700TL2 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.orange700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            2,
          ),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
      );
  static ButtonStyle get fillRedA400 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            2,
          ),
        ),
      );
  static ButtonStyle get fillRedA40001 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA40001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            2,
          ),
        ),
      );
  static ButtonStyle get fillYellow900 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow900,
      );
  // Outline button style
  static ButtonStyle get outlineBlack90001 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        shadowColor: appTheme.black90001.withOpacity(0.25),
        elevation: 2,
      );
  static ButtonStyle get outlineBlack90001TL5 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        side: BorderSide(
          color: appTheme.black90001.withOpacity(0.65),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
      );
  static ButtonStyle get outlineBlack90001TL51 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.black90001.withOpacity(0.65),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
      );
  static ButtonStyle get outlineBlue200 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blue200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static ButtonStyle get outlineBlue200TL19 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blue200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            19,
          ),
        ),
      );
  static ButtonStyle get outlineBlue200TL2 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blue200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            2,
          ),
        ),
      );
  static ButtonStyle get outlineBlue700 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        side: BorderSide(
          color: appTheme.blue700,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static ButtonStyle get outlineBlue700TL4 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blue700,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
      );
  static ButtonStyle get outlineBluegray300 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.indigo5001,
        side: BorderSide(
          color: appTheme.blueGray300,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
      );
  static ButtonStyle get outlineBluegray400 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray400,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static ButtonStyle get outlineGray200 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        side: BorderSide(
          color: appTheme.gray200,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static ButtonStyle get outlineIndigo90001 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.indigo90001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: appTheme.indigo90001.withOpacity(0.13),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
