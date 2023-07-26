import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: getVerticalSize(
            55,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.indigo90001,
          ),
        );
      case Style.bgFill_2:
        return Container(
          height: getVerticalSize(
            53,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.lightGreen900,
          ),
        );
      case Style.bgShadow:
        return Container(
          height: getVerticalSize(
            60,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
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
          ),
        );
      case Style.bgFill_3:
        return Container(
          height: getVerticalSize(
            60,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
        );
      case Style.bgFill:
        return Container(
          height: getVerticalSize(
            52,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.orange700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill_2,
  bgShadow,
  bgFill_3,
  bgFill,
}
