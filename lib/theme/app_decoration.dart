import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.gray20002,
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.purple200,
      );
  static BoxDecoration get gradientnamelightblue300nameonErrorContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.lightBlue300,
            theme.colorScheme.onErrorContainer,
          ],
        ),
      );
  static BoxDecoration get txtOutline => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientnameprimarynamelightblue800 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.95,
            1.09,
          ),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary,
            appTheme.lightBlue800,
          ],
        ),
      );
  static BoxDecoration get txtFill7 => BoxDecoration(
        color: appTheme.blue200,
      );
  static BoxDecoration get txtFill6 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get txtFill5 => BoxDecoration(
        color: appTheme.blue700,
      );
  static BoxDecoration get txtFill4 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get txtFill3 => BoxDecoration(
        color: appTheme.deepOrangeA100,
      );
  static BoxDecoration get txtFill2 => BoxDecoration(
        color: appTheme.green700,
      );
  static BoxDecoration get txtFill1 => BoxDecoration(
        color: appTheme.lightGreen600,
      );
  static BoxDecoration get outline10 => BoxDecoration(
        color: appTheme.lime500,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );
  static BoxDecoration get outline11 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outline12 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outline13 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outline18 => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001.withOpacity(0.65),
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline19 => BoxDecoration(
        color: appTheme.indigo5001,
        border: Border.all(
          color: appTheme.blueGray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline14 => BoxDecoration(
        border: Border.all(
          color: appTheme.blue200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline15 => BoxDecoration(
        color: appTheme.gray100,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outline16 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );
  static BoxDecoration get outline17 => BoxDecoration();
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get fill9 => BoxDecoration(
        color: appTheme.gray20003,
      );
  static BoxDecoration get fill8 => BoxDecoration(
        color: appTheme.lime50,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          top: BorderSide(
            color: appTheme.black90001.withOpacity(0.25),
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.indigo90001,
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.black90001.withOpacity(0.24),
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline4 => BoxDecoration(
        border: Border.all(
          color: appTheme.indigo90001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill7 => BoxDecoration(
        color: appTheme.indigo5001,
      );
  static BoxDecoration get outline3 => BoxDecoration(
        color: appTheme.blue700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );
  static BoxDecoration get fill6 => BoxDecoration(
        color: appTheme.orange700,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get outline6 => BoxDecoration(
        color: appTheme.gray300,
        border: Border.all(
          color: appTheme.amber200,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get fill12 => BoxDecoration(
        color: appTheme.blue200,
      );
  static BoxDecoration get outline21 => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4002b,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              21,
              27,
            ),
          ),
        ],
      );
  static BoxDecoration get outline5 => BoxDecoration();
  static BoxDecoration get fill11 => BoxDecoration(
        color: appTheme.gray20005,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get outline8 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.orange50,
      );
  static BoxDecoration get outline7 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fill13 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get txtOutline4 => BoxDecoration(
        color: appTheme.blue700,
        border: Border.all(
          color: appTheme.black90001.withOpacity(0.65),
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtOutline3 => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001.withOpacity(0.65),
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline9 => BoxDecoration(
        border: Border.all(
          color: appTheme.green80001,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get txtOutline2 => BoxDecoration(
        color: appTheme.indigo5001,
        border: Border.all(
          color: appTheme.blue700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill10 => BoxDecoration(
        color: appTheme.gray20004,
      );
  static BoxDecoration get txtOutline1 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline20 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.blueGray400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30,
      ),
    ),
  );

  static BorderRadius roundedBorder19 = BorderRadius.circular(
    getHorizontalSize(
      19,
    ),
  );

  static BorderRadius roundedBorder38 = BorderRadius.circular(
    getHorizontalSize(
      38,
    ),
  );

  static BorderRadius roundedBorder114 = BorderRadius.circular(
    getHorizontalSize(
      114,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );

  static BorderRadius roundedBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder65 = BorderRadius.circular(
    getHorizontalSize(
      65,
    ),
  );

  static BorderRadius txtCircleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50,
    ),
  );

  static BorderRadius txtCircleBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius txtCircleBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );

  static BorderRadius txtRoundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    