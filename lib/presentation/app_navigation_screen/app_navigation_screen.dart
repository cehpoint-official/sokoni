import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/product_details_dialog/product_details_dialog.dart';import 'package:sakuni/presentation/product_details_one_dialog/product_details_one_dialog.dart';import 'package:sakuni/presentation/sort_bottomsheet/sort_bottomsheet.dart';import 'package:sakuni/presentation/sort_by_bottomsheet/sort_by_bottomsheet.dart';import 'package:sakuni/presentation/filter_bottomsheet/filter_bottomsheet.dart';import 'package:sakuni/presentation/services_details_one_dialog/services_details_one_dialog.dart';class AppNavigationScreen extends StatelessWidget {const AppNavigationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: SizedBox(width: getHorizontalSize(375), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("App Navigation", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20), child: Text("Check your app's UI from the below demo screens of your app.", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.blueGray40001, fontSize: getFontSize(16), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.black90001))])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapCategories(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Categories", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapMessagesOneContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Messages One - Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapChatFive(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Chat Five", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPayment(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Payment", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapServicesTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Services - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapDetails(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("details", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapServicesdetails(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Services details", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProfileOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Profile One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapServicesOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Services One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapChat(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Chat", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapStart(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Start", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapInfoTwo(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("info Two", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapInfoOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("info One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapInfo(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("info", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSignin(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("sign-in", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProductDetailsTwoTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Product Details Two - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProductDetails(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Product Details", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPaymentOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Payment One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapMessages(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Messages", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapChatTwo(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Chat Two", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSignup(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("sign-up", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapHomeTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Home - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProductDetailsOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Product Details One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapChatThree(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Chat Three", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPropertiesTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Properties - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProductdetailsThree(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("product details Three", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapFilters(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("filters", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapFiltersOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("filters One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProductdetailsFour(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("product details Four", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProfile(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("profile", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapCalllist(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("call list", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapCall(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("call", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapMessagesTwo(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Messages Two", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapChatFour(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Chat Four", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSaveOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("save One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSaveTwo(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("save Two", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSort(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("sort", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSave(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("save", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapAbout(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("about", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapHelpandsupport(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("help and support", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapFeedback(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("feedback", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSettings(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Settings", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapAddress(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Address", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapNotificationOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Notification One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapNotificationTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Notification - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapOrders(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapRequirementsTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("requirements - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapChatOneTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("chat One - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPaymentdetails(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("payment details", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPaymentTwo(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("payment Two", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSearchOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("search One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSearch(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("search", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSortby(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("sort by", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapFilter(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Filter", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSaveFive(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("save Five", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapCategoriesOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Categories One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapThreebar(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Three bar", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapProfileTwo(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Profile Two", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSaveFour(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("save Four", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSaveThree(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("save Three", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPaymentFive(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("payment Five", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPaymentThree(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("payment Three", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapChatSix(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("chat Six", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapOrdersThree(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Orders Three", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapServicesdetailsOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Services details One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPaymentSix(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Payment Six", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapPaymentFour(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("payment Four", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSearches(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("searches", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapAboutOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("about One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapHelpandsupportOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("help and support One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapFeedbackOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("feedback One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapSettingsOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Settings One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapAddressOne(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Address One", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapNotificationThree(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Notification Three", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))]))), GestureDetector(onTap: () {onTapNotificationTwoTabContainer(context);}, child: Container(decoration: AppDecoration.fill1, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("Notification Two - Tab Container", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray40001))])))]))))])))); } 
/// Navigates to the categoriesScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the categoriesScreen.
onTapCategories(BuildContext context) { Navigator.pushNamed(context, AppRoutes.categoriesScreen); } 
/// Navigates to the messagesOneContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the messagesOneContainerScreen.
onTapMessagesOneContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagesOneContainerScreen); } 
/// Navigates to the chatFiveScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatFiveScreen.
onTapChatFive(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatFiveScreen); } 
/// Navigates to the paymentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentScreen.
onTapPayment(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentScreen); } 
/// Navigates to the servicesTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the servicesTabContainerScreen.
onTapServicesTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.servicesTabContainerScreen); } 
/// Navigates to the detailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the detailsScreen.
onTapDetails(BuildContext context) { Navigator.pushNamed(context, AppRoutes.detailsScreen); } 
/// Navigates to the servicesDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the servicesDetailsScreen.
onTapServicesdetails(BuildContext context) { Navigator.pushNamed(context, AppRoutes.servicesDetailsScreen); } 
/// Navigates to the profileOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the profileOneScreen.
onTapProfileOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileOneScreen); } 
/// Navigates to the servicesOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the servicesOneScreen.
onTapServicesOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.servicesOneScreen); } 
/// Navigates to the chatScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatScreen.
onTapChat(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatScreen); } 
/// Navigates to the startScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the startScreen.
onTapStart(BuildContext context) { Navigator.pushNamed(context, AppRoutes.startScreen); } 
/// Navigates to the infoTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the infoTwoScreen.
onTapInfoTwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.infoTwoScreen); } 
/// Navigates to the infoOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the infoOneScreen.
onTapInfoOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.infoOneScreen); } 
/// Navigates to the infoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the infoScreen.
onTapInfo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.infoScreen); } 
/// Navigates to the signInScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the signInScreen.
onTapSignin(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signInScreen); } 
/// Navigates to the productDetailsTwoTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the productDetailsTwoTabContainerScreen.
onTapProductDetailsTwoTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsTwoTabContainerScreen); } 


/// Displays an [AlertDialog] with a custom content widget using the 
/// provided [BuildContext].
///
/// The custom content is created using the [ProductDetailsDialog]
/// method and is displayed in an [AlertDialog] that fills the entire screen 
/// with no padding.
onTapProductDetails(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ProductDetailsDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
/// Navigates to the paymentOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentOneScreen.
onTapPaymentOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentOneScreen); } 
/// Navigates to the messagesScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the messagesScreen.
onTapMessages(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagesScreen); } 
/// Navigates to the chatTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatTwoScreen.
onTapChatTwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatTwoScreen); } 
/// Navigates to the signUpScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the signUpScreen.
onTapSignup(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpScreen); } 
/// Navigates to the homeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the homeTabContainerScreen.
onTapHomeTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeTabContainerScreen); } 


/// Displays an [AlertDialog] with a custom content widget using the 
/// provided [BuildContext].
///
/// The custom content is created using the [ProductDetailsOneDialog]
/// method and is displayed in an [AlertDialog] that fills the entire screen 
/// with no padding.
onTapProductDetailsOne(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ProductDetailsOneDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
/// Navigates to the chatThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatThreeScreen.
onTapChatThree(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatThreeScreen); } 
/// Navigates to the propertiesTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the propertiesTabContainerScreen.
onTapPropertiesTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.propertiesTabContainerScreen); } 
/// Navigates to the productDetailsThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the productDetailsThreeScreen.
onTapProductdetailsThree(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsThreeScreen); } 
/// Navigates to the filtersScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the filtersScreen.
onTapFilters(BuildContext context) { Navigator.pushNamed(context, AppRoutes.filtersScreen); } 
/// Navigates to the filtersOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the filtersOneScreen.
onTapFiltersOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.filtersOneScreen); } 
/// Navigates to the productDetailsFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the productDetailsFourScreen.
onTapProductdetailsFour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsFourScreen); } 
/// Navigates to the profileScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the profileScreen.
onTapProfile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
/// Navigates to the callListScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the callListScreen.
onTapCalllist(BuildContext context) { Navigator.pushNamed(context, AppRoutes.callListScreen); } 
/// Navigates to the callScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the callScreen.
onTapCall(BuildContext context) { Navigator.pushNamed(context, AppRoutes.callScreen); } 
/// Navigates to the messagesTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the messagesTwoScreen.
onTapMessagesTwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagesTwoScreen); } 
/// Navigates to the chatFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatFourScreen.
onTapChatFour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatFourScreen); } 
/// Navigates to the saveOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the saveOneScreen.
onTapSaveOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.saveOneScreen); } 
/// Navigates to the saveTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the saveTwoScreen.
onTapSaveTwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.saveTwoScreen); } 


/// Shows a modal bottom sheet with [SortBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSort(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SortBottomsheet(),isScrollControlled: true); } 
/// Navigates to the saveScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the saveScreen.
onTapSave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.saveScreen); } 
/// Navigates to the aboutScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the aboutScreen.
onTapAbout(BuildContext context) { Navigator.pushNamed(context, AppRoutes.aboutScreen); } 
/// Navigates to the helpAndSupportScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the helpAndSupportScreen.
onTapHelpandsupport(BuildContext context) { Navigator.pushNamed(context, AppRoutes.helpAndSupportScreen); } 
/// Navigates to the feedbackScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the feedbackScreen.
onTapFeedback(BuildContext context) { Navigator.pushNamed(context, AppRoutes.feedbackScreen); } 
/// Navigates to the settingsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the settingsScreen.
onTapSettings(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsScreen); } 
/// Navigates to the addressScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the addressScreen.
onTapAddress(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addressScreen); } 
/// Navigates to the notificationOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the notificationOneScreen.
onTapNotificationOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationOneScreen); } 
/// Navigates to the notificationTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the notificationTabContainerScreen.
onTapNotificationTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationTabContainerScreen); } 
/// Navigates to the ordersScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the ordersScreen.
onTapOrders(BuildContext context) { Navigator.pushNamed(context, AppRoutes.ordersScreen); } 
/// Navigates to the requirementsTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the requirementsTabContainerScreen.
onTapRequirementsTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.requirementsTabContainerScreen); } 
/// Navigates to the chatOneTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatOneTabContainerScreen.
onTapChatOneTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatOneTabContainerScreen); } 
/// Navigates to the paymentDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentDetailsScreen.
onTapPaymentdetails(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentDetailsScreen); } 
/// Navigates to the paymentTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentTwoScreen.
onTapPaymentTwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentTwoScreen); } 
/// Navigates to the searchOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the searchOneScreen.
onTapSearchOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchOneScreen); } 
/// Navigates to the searchScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the searchScreen.
onTapSearch(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchScreen); } 


/// Shows a modal bottom sheet with [SortByBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSortby(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SortByBottomsheet(),isScrollControlled: true); } 


/// Shows a modal bottom sheet with [FilterBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapFilter(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>FilterBottomsheet(),isScrollControlled: true); } 
/// Navigates to the saveFiveScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the saveFiveScreen.
onTapSaveFive(BuildContext context) { Navigator.pushNamed(context, AppRoutes.saveFiveScreen); } 
/// Navigates to the categoriesOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the categoriesOneScreen.
onTapCategoriesOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.categoriesOneScreen); } 
/// Navigates to the threeBarScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the threeBarScreen.
onTapThreebar(BuildContext context) { Navigator.pushNamed(context, AppRoutes.threeBarScreen); } 
/// Navigates to the profileTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the profileTwoScreen.
onTapProfileTwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileTwoScreen); } 
/// Navigates to the saveFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the saveFourScreen.
onTapSaveFour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.saveFourScreen); } 
/// Navigates to the saveThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the saveThreeScreen.
onTapSaveThree(BuildContext context) { Navigator.pushNamed(context, AppRoutes.saveThreeScreen); } 
/// Navigates to the paymentFiveScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentFiveScreen.
onTapPaymentFive(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentFiveScreen); } 
/// Navigates to the paymentThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentThreeScreen.
onTapPaymentThree(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentThreeScreen); } 
/// Navigates to the chatSixScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the chatSixScreen.
onTapChatSix(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatSixScreen); } 
/// Navigates to the ordersThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the ordersThreeScreen.
onTapOrdersThree(BuildContext context) { Navigator.pushNamed(context, AppRoutes.ordersThreeScreen); } 


/// Displays an [AlertDialog] with a custom content widget using the 
/// provided [BuildContext].
///
/// The custom content is created using the [ServicesDetailsOneDialog]
/// method and is displayed in an [AlertDialog] that fills the entire screen 
/// with no padding.
onTapServicesdetailsOne(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ServicesDetailsOneDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
/// Navigates to the paymentSixScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentSixScreen.
onTapPaymentSix(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentSixScreen); } 
/// Navigates to the paymentFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the paymentFourScreen.
onTapPaymentFour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentFourScreen); } 
/// Navigates to the searchesScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the searchesScreen.
onTapSearches(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchesScreen); } 
/// Navigates to the aboutOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the aboutOneScreen.
onTapAboutOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.aboutOneScreen); } 
/// Navigates to the helpAndSupportOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the helpAndSupportOneScreen.
onTapHelpandsupportOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.helpAndSupportOneScreen); } 
/// Navigates to the feedbackOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the feedbackOneScreen.
onTapFeedbackOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.feedbackOneScreen); } 
/// Navigates to the settingsOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the settingsOneScreen.
onTapSettingsOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsOneScreen); } 
/// Navigates to the addressOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the addressOneScreen.
onTapAddressOne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addressOneScreen); } 
/// Navigates to the notificationThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the notificationThreeScreen.
onTapNotificationThree(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationThreeScreen); } 
/// Navigates to the notificationTwoTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the notificationTwoTabContainerScreen.
onTapNotificationTwoTabContainer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationTwoTabContainerScreen); } 
 }
