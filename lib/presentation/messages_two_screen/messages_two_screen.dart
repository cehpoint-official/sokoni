import '../messages_two_screen/widgets/messages_two_item_widget.dart';import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';import 'package:sakuni/widgets/app_bar/appbar_button_1.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class MessagesTwoScreen extends StatelessWidget {MessagesTwoScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: CustomAppBar(height: getVerticalSize(67), title: AppbarButton1(margin: getMargin(left: 12), onTap: () {onTapMessage2(context);}), actions: [AppbarImage(height: getSize(25), width: getSize(25), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 12, top: 20, right: 17, bottom: 3)), AppbarImage(height: getSize(32), width: getSize(32), svgPath: ImageConstant.imgIconoiradduser, margin: getMargin(left: 31, top: 17, right: 29))], styleType: Style.bgFill_2), body: Container(width: double.maxFinite, padding: getPadding(left: 11, right: 11), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Expanded(child: Padding(padding: getPadding(top: 18), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(25));}, itemCount: 3, itemBuilder: (context, index) {return MessagesTwoItemWidget(onTapColumntype: () {onTapColumntype(context);});}))), Spacer(), Padding(padding: getPadding(left: 25, right: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(svgPath: ImageConstant.imgSolaruserbrokendefault, height: getVerticalSize(36), width: getHorizontalSize(34)), CustomImageView(svgPath: ImageConstant.imgCall, height: getSize(27), width: getSize(27), margin: getMargin(top: 4, bottom: 4)), CustomImageView(svgPath: ImageConstant.imgHome, height: getSize(34), width: getSize(34), margin: getMargin(top: 1, bottom: 1), onTap: () {onTapImgHome(context);}), CustomImageView(svgPath: ImageConstant.imgFileBlack90001, height: getVerticalSize(24), width: getHorizontalSize(19), margin: getMargin(top: 6, bottom: 6), onTap: () {onTapImgFile(context);}), CustomImageView(svgPath: ImageConstant.imgIconsaxlinearmessage, height: getSize(31), width: getSize(31), margin: getMargin(top: 2, bottom: 2))]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Solaruserbrokendefault: return AppRoutes.messagesOnePage; case BottomBarEnum.Iconsaxlinearmessage: return "/"; case BottomBarEnum.Home: return "/"; case BottomBarEnum.Save: return "/"; case BottomBarEnum.Basilmenuoutlinedefault: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.messagesOnePage: return MessagesOnePage(); default: return DefaultWidget();} } 
/// Navigates to the chatThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatThreeScreen.
onTapColumntype(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatThreeScreen); } 
/// Navigates to the propertiesTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the propertiesTabContainerScreen.
onTapMessage2(BuildContext context) { Navigator.pushNamed(context, AppRoutes.propertiesTabContainerScreen); } 
/// Navigates to the homeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the homeTabContainerScreen.
onTapImgHome(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen); } 
/// Navigates to the saveOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the saveOneScreen.
onTapImgFile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.saveOneScreen); } 
 }
