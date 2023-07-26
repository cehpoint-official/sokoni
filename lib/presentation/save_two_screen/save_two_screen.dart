import '../save_two_screen/widgets/save_two_item_widget.dart';import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';import 'package:sakuni/widgets/app_bar/appbar_button_2.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_bottom_bar.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class SaveTwoScreen extends StatelessWidget {SaveTwoScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray300, appBar: CustomAppBar(height: getVerticalSize(67), title: AppbarButton2(margin: getMargin(left: 10), onTap: () {onTapSaved1(context);}), actions: [AppbarImage(height: getSize(25), width: getSize(25), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 18, top: 20, right: 18, bottom: 21))], styleType: Style.bgFill_2), body: Container(width: double.maxFinite, padding: getPadding(left: 12, right: 12), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 3, top: 17, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4, bottom: 4), child: Text("2 Property selected", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeBlack90001)), CustomElevatedButton(width: getHorizontalSize(115), height: getVerticalSize(36), text: "Remove", buttonStyle: CustomButtonStyles.fillRedA400, buttonTextStyle: theme.textTheme.titleLarge!)])), Expanded(child: Padding(padding: getPadding(top: 24), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(237), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(4), crossAxisSpacing: getHorizontalSize(4)), physics: NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return SaveTwoItemWidget();}))), Spacer(), Padding(padding: getPadding(left: 24, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(svgPath: ImageConstant.imgSolaruserbrokendefault, height: getVerticalSize(36), width: getHorizontalSize(34)), CustomImageView(svgPath: ImageConstant.imgCall, height: getSize(27), width: getSize(27), margin: getMargin(top: 4, bottom: 4)), CustomImageView(svgPath: ImageConstant.imgHome, height: getSize(34), width: getSize(34), margin: getMargin(top: 1, bottom: 1), onTap: () {onTapImgHome(context);}), CustomImageView(svgPath: ImageConstant.imgBookmark, height: getVerticalSize(24), width: getHorizontalSize(19), margin: getMargin(top: 6, bottom: 6)), CustomImageView(svgPath: ImageConstant.imgIconsaxlinearmessageBlack90001, height: getSize(31), width: getSize(31), margin: getMargin(top: 2, bottom: 2))]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Solaruserbrokendefault: return AppRoutes.messagesOnePage; case BottomBarEnum.Iconsaxlinearmessage: return "/"; case BottomBarEnum.Home: return "/"; case BottomBarEnum.Save: return "/"; case BottomBarEnum.Basilmenuoutlinedefault: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.messagesOnePage: return MessagesOnePage(); default: return DefaultWidget();} } 
/// Navigates to the propertiesTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the propertiesTabContainerScreen.
onTapSaved1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.propertiesTabContainerScreen); } 
/// Navigates to the homeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the homeTabContainerScreen.
onTapImgHome(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen); } 
 }
