import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/notification_page/notification_page.dart';import 'package:sakuni/widgets/app_bar/appbar_button_3.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';class NotificationTabContainerScreen extends StatefulWidget {const NotificationTabContainerScreen({Key? key}) : super(key: key);

@override NotificationTabContainerScreenState createState() =>  NotificationTabContainerScreenState();
 }

// ignore_for_file: must_be_immutable
class NotificationTabContainerScreenState extends State<NotificationTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray300, appBar: CustomAppBar(height: getVerticalSize(64), title: AppbarButton3(margin: getMargin(left: 11), onTap: () {onTapNotification1(context);}), styleType: Style.bgFill), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 19), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(34), width: getHorizontalSize(144), margin: getMargin(left: 20), child: TabBar(controller: tabviewController, labelColor: appTheme.black90001, labelStyle: TextStyle(), unselectedLabelColor: appTheme.black90001, unselectedLabelStyle: TextStyle(), indicatorColor: appTheme.blue700, tabs: [Tab(child: Text("All", overflow: TextOverflow.ellipsis)), Tab(child: Text("Offers", overflow: TextOverflow.ellipsis))])), SizedBox(height: getVerticalSize(812), child: TabBarView(controller: tabviewController, children: [NotificationPage(), NotificationPage()]))]))))); } 
/// Navigates to the servicesOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the servicesOneScreen.
onTapNotification1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.servicesOneScreen); } 
 }
