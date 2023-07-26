import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeBlue200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blue200,
      );
  static get labelMediumBlack90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBlueA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA400,
      );
  static get labelLargeNunitoBlueA200 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.blueA200,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeNunito => theme.textTheme.labelLarge!.nunito.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w700,
      );
  // Body text style
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLarge16_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyMedium14_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyLargeBlack90016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyMediumBlack9000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.65),
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.54),
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          9,
        ),
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.86),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack90001_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.71),
      );
  static get bodyLargeBluegray400_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeBlack90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.46),
      );
  static get bodyLargeBlue200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue200,
      );
  static get bodyLargeBlack9000116_6 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.61),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeLightgreen90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightGreen90001,
      );
  static get bodyLargeGray20004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray20004,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeLightgreen900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightGreen900,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack9000116_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.75),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeGray900b2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900B2,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack9000116_4 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.61),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyLargeGreen8000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green80001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack9000116_5 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.63),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack9000116_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.33),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack9000116_3 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.5),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyMediumBlack90001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.46),
      );
  static get bodyMediumBlack90001_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.69),
      );
  static get bodyMediumBlack90001_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.57),
      );
  static get bodyLargePrimary16 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeBlue700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue700,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallInterBlack90001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black90001.withOpacity(0.75),
        fontSize: getFontSize(
          9,
        ),
      );
  static get bodyMediumGreenA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeGray40016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlue700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue700,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeBluegray90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeGray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray300,
      );
  static get bodyLargeGreen80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green80001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodySmallBlack90001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.57),
      );
  static get bodyMediumGreen80002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green80002,
      );
  static get bodyLargeGreen80002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green80002,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodySmallOutfit => theme.textTheme.bodySmall!.outfit.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray40014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeRisque => theme.textTheme.bodyLarge!.risque;
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.51),
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeGray900b216 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900B2.withOpacity(0.87),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeIndigo600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo600,
      );
  static get bodyLargeBlack9000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.53),
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargeGray10001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodyLargeBlack9000118 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.53),
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeRisqueGray20005 =>
      theme.textTheme.bodyLarge!.risque.copyWith(
        color: appTheme.gray20005,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  // Title text style
  static get titleLargeGray300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray300,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.5),
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleLargeBlack90001SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumDMSansPrimaryMedium =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansPrimary =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigo600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo600,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumBlue200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue200,
      );
  static get titleMediumInterIndigo90001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.indigo90001,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoMedium =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumBlue700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue700,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumNunitoBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack90001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumNunitoBlue200 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.blue200,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w800,
      );
  static get titleLargeGray500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeKanitGray700 =>
      theme.textTheme.titleLarge!.kanit.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          20,
        ),
      );
  static get titleLargeBluegray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumLightgreen900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoBlack90001 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black90001.withOpacity(0.65),
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get titleMediumNunitoIndigo90001 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.indigo90001,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlue700_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue700,
      );
  static get titleMediumBlue700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumGray20004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray20004,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack9000122 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          22,
        ),
      );
  static get titleLargeBlack9000120 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          20,
        ),
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: getFontSize(
          20,
        ),
      );
  // Headline text style
  static get headlineMediumRobotoPrimary =>
      theme.textTheme.headlineMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeVidalokaOnPrimary =>
      theme.textTheme.headlineLarge!.vidaloka.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallVidalokaOnPrimary =>
      theme.textTheme.headlineSmall!.vidaloka.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          24,
        ),
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get kanit {
    return copyWith(
      fontFamily: 'Kanit',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get risque {
    return copyWith(
      fontFamily: 'Risque',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get vidaloka {
    return copyWith(
      fontFamily: 'Vidaloka',
    );
  }
}
