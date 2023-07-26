import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';import 'package:sakuni/widgets/custom_radio_button.dart';
// ignore_for_file: must_be_immutable
class SortByBottomsheet extends StatelessWidget {SortByBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

String radioGroup1 = "";

String radioGroup2 = "";

List<String> radioList = ["msg_price_low_to_high2", "msg_price_high_to_low"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: SingleChildScrollView(child: Container(margin: getMargin(right: 3), padding: getPadding(top: 19, bottom: 19), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(width: double.maxFinite, height: getVerticalSize(29), text: "Sort by", margin: getMargin(left: 21, right: 19), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowrightBlack9000117x17)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBlack90001, onTap: () {onTapSortby(context);}), Padding(padding: getPadding(top: 10), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.gray40001)), Padding(padding: getPadding(left: 14, top: 32, right: 21), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Relevance", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium), Padding(padding: getPadding(top: 2, bottom: 1), child: CustomRadioButton(width: getHorizontalSize(19), iconSize: getHorizontalSize(11), value: "", groupValue: radioGroup, margin: getMargin(top: 2, bottom: 1), isRightCheck: true, onChange: (value) {radioGroup = value;}))])), Padding(padding: getPadding(left: 14, top: 30, right: 21), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Popularity", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium), Padding(padding: getPadding(top: 1, bottom: 3), child: CustomRadioButton(width: getHorizontalSize(18), iconSize: getHorizontalSize(18), value: "", groupValue: radioGroup1, margin: getMargin(top: 1, bottom: 3), isRightCheck: true, onChange: (value) {radioGroup1 = value;}))])), Padding(padding: getPadding(top: 28, bottom: 95), child: Column(children: [CustomRadioButton(width: getHorizontalSize(388), text: "Price: Low to High", iconSize: getHorizontalSize(18), value: radioList[0], groupValue: radioGroup2, margin: getMargin(right: 2), textStyle: theme.textTheme.titleMedium!, isRightCheck: true, onChange: (value) {radioGroup2 = value;}), CustomRadioButton(width: getHorizontalSize(391), text: "Price: High to Low", iconSize: getHorizontalSize(18), value: radioList[1], groupValue: radioGroup2, margin: getMargin(top: 29), textStyle: theme.textTheme.titleMedium!, isRightCheck: true, onChange: (value) {radioGroup2 = value;})]))])))); } 
/// Navigates to the searchScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the searchScreen.
onTapSortby(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchScreen); } 
 }
