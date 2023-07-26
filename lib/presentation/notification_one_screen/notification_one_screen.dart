import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/widgets/app_bar/appbar_button_3.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';class NotificationOneScreen extends StatelessWidget {const NotificationOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray300, appBar: CustomAppBar(height: getVerticalSize(64), title: AppbarButton3(margin: getMargin(left: 11), onTap: () {onTapNotification(context);}), styleType: Style.bgFill), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 19), child: Padding(padding: getPadding(bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 20), child: Row(children: [Text("All", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeBlack90001), Padding(padding: getPadding(left: 51), child: Text("Offers", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeBlack90001))])), CustomImageView(svgPath: ImageConstant.imgLine11, height: getVerticalSize(3), width: getHorizontalSize(32), margin: getMargin(left: 17, top: 4)), Container(width: double.maxFinite, margin: getMargin(top: 49), padding: getPadding(left: 24, top: 9, right: 24, bottom: 9), decoration: AppDecoration.fill1, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgNotificationAmber400, height: getVerticalSize(34), width: getHorizontalSize(35), margin: getMargin(bottom: 50)), Padding(padding: getPadding(left: 14, top: 4, bottom: 56), child: Text("Notification 1", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge))]))])))))); } 
/// Navigates to the servicesOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the servicesOneScreen.
onTapNotification(BuildContext context) { Navigator.pushNamed(context, AppRoutes.servicesOneScreen); } 
 }
