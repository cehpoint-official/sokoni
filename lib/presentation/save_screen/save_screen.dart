import '../save_screen/widgets/save_item_widget.dart';import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/widgets/app_bar/appbar_button_2.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';class SaveScreen extends StatelessWidget {const SaveScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: CustomAppBar(height: getVerticalSize(51), title: AppbarButton2(margin: getMargin(left: 15), onTap: () {onTapSaved2(context);}), actions: [AppbarImage(height: getVerticalSize(24), width: getHorizontalSize(23), svgPath: ImageConstant.imgSearchPrimary24x23, margin: getMargin(left: 17, top: 14, right: 17, bottom: 12))], styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: getPadding(left: 9, top: 22, right: 9, bottom: 22), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 5, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 1, bottom: 7), child: Text("9 items saved", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeBlack90001)), CustomElevatedButton(width: getHorizontalSize(96), height: getVerticalSize(36), text: "Select", buttonStyle: CustomButtonStyles.fillBlue700TL2, buttonTextStyle: theme.textTheme.titleLarge!)])), Expanded(child: Padding(padding: getPadding(left: 5, top: 32), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(246), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(6), crossAxisSpacing: getHorizontalSize(6)), physics: BouncingScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return SaveItemWidget();})))])))); } 
/// Navigates to the servicesTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the servicesTabContainerScreen.
onTapSaved2(BuildContext context) { Navigator.pushNamed(context, AppRoutes.servicesTabContainerScreen); } 
 }