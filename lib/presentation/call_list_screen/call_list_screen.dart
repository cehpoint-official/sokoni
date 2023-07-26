import '../call_list_screen/widgets/call_list_item_widget.dart';import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';class CallListScreen extends StatelessWidget {const CallListScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: CustomAppBar(height: getVerticalSize(55), title: CustomElevatedButton(width: getHorizontalSize(143), height: getVerticalSize(37), text: "Call list", margin: getMargin(left: 21), leftIcon: Container(margin: getMargin(right: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowleft)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onTap: () {onTapCalllist(context);}), actions: [AppbarImage(height: getSize(25), width: getSize(25), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 21, top: 14, right: 11, bottom: 3)), AppbarImage(height: getSize(32), width: getSize(32), svgPath: ImageConstant.imgIconoiradduser, margin: getMargin(left: 31, top: 11, right: 32))], styleType: Style.bgFill_2), body: Padding(padding: getPadding(left: 24, top: 20, right: 26), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(18));}, itemCount: 5, itemBuilder: (context, index) {return CallListItemWidget(onTapColumncallcount: () {onTapColumncallcount(context);});})))); } 
/// Navigates to the callScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the callScreen.
onTapColumncallcount(BuildContext context) { Navigator.pushNamed(context, AppRoutes.callScreen); } 
/// Navigates to the propertiesTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the propertiesTabContainerScreen.
onTapCalllist(BuildContext context) { Navigator.pushNamed(context, AppRoutes.propertiesTabContainerScreen); } 
 }
