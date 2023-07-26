import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/orders_four_page/orders_four_page.dart';import 'package:sakuni/presentation/requirements_one_page/requirements_one_page.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_elevated_button.dart';class RequirementsTabContainerScreen extends StatefulWidget {const RequirementsTabContainerScreen({Key? key}) : super(key: key);

@override RequirementsTabContainerScreenState createState() =>  RequirementsTabContainerScreenState();
 }

// ignore_for_file: must_be_immutable
class RequirementsTabContainerScreenState extends State<RequirementsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: CustomAppBar(height: getVerticalSize(54), title: CustomElevatedButton(width: getHorizontalSize(136), height: getVerticalSize(37), text: "Orders", margin: getMargin(left: 12), leftIcon: Container(margin: getMargin(right: 30), child: CustomImageView(svgPath: ImageConstant.imgArrowleft)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onTap: () {onTapOrders(context);}), actions: [AppbarImage(height: getVerticalSize(28), width: getHorizontalSize(29), svgPath: ImageConstant.imgSearchPrimary, margin: getMargin(left: 14, top: 16, right: 14, bottom: 9))], styleType: Style.bgFill_1), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(31), width: getHorizontalSize(366), margin: getMargin(left: 24, top: 16), child: TabBar(controller: tabviewController, labelColor: appTheme.blue200, labelStyle: TextStyle(), unselectedLabelColor: appTheme.blue200, unselectedLabelStyle: TextStyle(), indicatorColor: appTheme.blue200, tabs: [Tab(child: Text("REQUIREMENTS", overflow: TextOverflow.ellipsis)), Tab(child: Text("ORDERS", overflow: TextOverflow.ellipsis))])), SizedBox(height: getVerticalSize(785), child: TabBarView(controller: tabviewController, children: [RequirementsOnePage(), OrdersFourPage()]))])))); } 
/// Navigates to the homeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the homeTabContainerScreen.
onTapOrders(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen); } 
 }
