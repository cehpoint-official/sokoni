import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/notification_two_page/notification_two_page.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/appbar_subtitle.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';class NotificationTwoTabContainerScreen extends StatefulWidget {const NotificationTwoTabContainerScreen({Key? key}) : super(key: key);

@override NotificationTwoTabContainerScreenState createState() =>  NotificationTwoTabContainerScreenState();
 }

// ignore_for_file: must_be_immutable
class NotificationTwoTabContainerScreenState extends State<NotificationTwoTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray300, appBar: CustomAppBar(height: getVerticalSize(64), leadingWidth: 48, leading: AppbarImage(height: getSize(37), width: getSize(37), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 11, top: 12, bottom: 14), onTap: () {onTapArrowleft15(context);}), title: AppbarSubtitle(text: "Notification", margin: getMargin(left: 30)), styleType: Style.bgFill_1), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 19), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(34), width: getHorizontalSize(144), margin: getMargin(left: 20), child: TabBar(controller: tabviewController, labelColor: appTheme.black90001, labelStyle: TextStyle(), unselectedLabelColor: appTheme.black90001, unselectedLabelStyle: TextStyle(), indicatorColor: appTheme.blue700, tabs: [Tab(child: Text("All", overflow: TextOverflow.ellipsis)), Tab(child: Text("Offers", overflow: TextOverflow.ellipsis))])), SizedBox(height: getVerticalSize(812), child: TabBarView(controller: tabviewController, children: [NotificationTwoPage(), NotificationTwoPage()]))]))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft15(BuildContext context) { Navigator.pop(context); } 
 }
