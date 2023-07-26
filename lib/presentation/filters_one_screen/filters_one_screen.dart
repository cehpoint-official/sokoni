import '../filters_one_screen/widgets/filters_one_item_widget.dart';import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/widgets/app_bar/appbar_button_3.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';import 'package:sakuni/presentation/sort_bottomsheet/sort_bottomsheet.dart';class FiltersOneScreen extends StatelessWidget {const FiltersOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray300, appBar: CustomAppBar(height: getVerticalSize(55), title: AppbarButton3(margin: getMargin(left: 12), onTap: () {onTapresults(context);}), actions: [CustomElevatedButton(width: getHorizontalSize(77), height: getVerticalSize(34), text: "Sort", margin: getMargin(left: 14, top: 7, right: 14, bottom: 13), leftIcon: SizedBox(child: CustomImageView(svgPath: ImageConstant.imgBasilsortoutline)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onTap: () {onTapSort(context);})], styleType: Style.bgFill_2), body: Padding(padding: getPadding(left: 9, top: 14, right: 12), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(237), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(4), crossAxisSpacing: getHorizontalSize(4)), physics: BouncingScrollPhysics(), itemCount: 8, itemBuilder: (context, index) {return FiltersOneItemWidget(onTapColumnrectangle: () {onTapColumnrectangle(context);});})))); } 
/// Navigates to the productDetailsFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the productDetailsFourScreen.
onTapColumnrectangle(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsFourScreen); } 
/// Navigates to the homeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the homeTabContainerScreen.
onTapresults(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen); } 


/// Shows a modal bottom sheet with [SortBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSort(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SortBottomsheet(),isScrollControlled: true); } 
 }
