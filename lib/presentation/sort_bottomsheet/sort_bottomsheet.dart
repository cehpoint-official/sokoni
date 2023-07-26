import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';class SortBottomsheet extends StatelessWidget {const SortBottomsheet({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 17, right: 23, bottom: 17), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 10), child: Text("Short by", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeBlack90001)), CustomImageView(svgPath: ImageConstant.imgArrowrightBlack9000117x17, height: getSize(30), width: getSize(30), margin: getMargin(bottom: 7), onTap: () {onTapImgArrowright(context);})]), CustomElevatedButton(width: double.maxFinite, height: getVerticalSize(52), text: "Price: High to Low", margin: getMargin(left: 4, top: 42, right: 4), buttonStyle: CustomButtonStyles.fillGreenA100, buttonTextStyle: theme.textTheme.bodyLarge!, onTap: () {onTapPricehighto(context);}), CustomElevatedButton(width: double.maxFinite, height: getVerticalSize(52), text: "Price:  Low to High", margin: getMargin(left: 4, top: 10, right: 4, bottom: 89), buttonStyle: CustomButtonStyles.fillGreenA100, buttonTextStyle: theme.textTheme.bodyLarge!, onTap: () {onTapPricelowto(context);})]))); } 
/// Navigates to the filtersOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the filtersOneScreen.
onTapImgArrowright(BuildContext context) { Navigator.pushNamed(context, AppRoutes.filtersOneScreen); } 
/// Navigates to the filtersOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the filtersOneScreen.
onTapPricehighto(BuildContext context) { Navigator.pushNamed(context, AppRoutes.filtersOneScreen); } 
/// Navigates to the filtersOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the filtersOneScreen.
onTapPricelowto(BuildContext context) { Navigator.pushNamed(context, AppRoutes.filtersOneScreen); } 
 }
