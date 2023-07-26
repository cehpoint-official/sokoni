import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          iconSize: getSize(height ?? 0),
          padding: EdgeInsets.all(0),
          icon: Container(
            alignment: Alignment.center,
            width: getSize(width ?? 0),
            height: getSize(height ?? 0),
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      25.00,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black90001.withOpacity(0.25),
                      spreadRadius: getHorizontalSize(
                        2.00,
                      ),
                      blurRadius: getHorizontalSize(
                        2.00,
                      ),
                      offset: Offset(
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillIndigo90001 => BoxDecoration(
        color: appTheme.indigo90001,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: appTheme.indigo90001,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillIndigo400 => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
      );
  static BoxDecoration get fillLightgreenA700 => BoxDecoration(
        color: appTheme.lightGreenA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            11.00,
          ),
        ),
      );
  static BoxDecoration get fillGreen80001 => BoxDecoration(
        color: appTheme.green80001,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray20004 => BoxDecoration(
        color: appTheme.blue700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        ),
        border: Border.all(
          color: appTheme.gray20004,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}
