import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/widgets/app_bar/appbar_image.dart';import 'package:sakuni/widgets/app_bar/appbar_subtitle.dart';import 'package:sakuni/widgets/app_bar/appbar_subtitle_4.dart';import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';import 'package:sakuni/widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable
class AboutOneScreen extends StatelessWidget {AboutOneScreen({Key? key}) : super(key: key);

bool isSelectedSwitch = false;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: CustomAppBar(height: getVerticalSize(64), leadingWidth: 47, leading: AppbarImage(height: getSize(37), width: getSize(37), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 10, top: 12, bottom: 14), onTap: () {onTapArrowleft9(context);}), title: AppbarSubtitle(text: "About", margin: getMargin(left: 30)), actions: [AppbarImage(height: getSize(26), width: getSize(26), svgPath: ImageConstant.imgIconoirheadsethelp, margin: getMargin(left: 17, top: 18, right: 19)), AppbarSubtitle4(text: "Help", margin: getMargin(left: 8, top: 22, right: 36, bottom: 2))], styleType: Style.bgFill_1), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 36), child: Padding(padding: getPadding(left: 12, right: 12, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(183), width: getHorizontalSize(402), child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgRectangle3109, height: getVerticalSize(183), width: getHorizontalSize(402), alignment: Alignment.center), CustomSwitch(margin: getMargin(left: 10, top: 7), alignment: Alignment.topLeft, value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})])), CustomImageView(svgPath: ImageConstant.imgArrowrightBlack9000116x7, height: getVerticalSize(16), width: getHorizontalSize(7), alignment: Alignment.centerRight, margin: getMargin(right: 3)), Text("About Sokoni", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium), Container(width: getHorizontalSize(377), margin: getMargin(left: 11, top: 25, right: 13), child: Text("Lorem ipsum dolor sit amet, consecteturadipis\nicing elit. Est, in unde. Dolor assumenda archite\ncto repellendus vel cum magni totam perferend\nis. Sapiente fugiat mollitia ex blanditiis quidem dignissimos accusamus eveniet! Unde sapient\ne, nulla, nostrum similique a atque, odio blandit\niis et eos cupiditate id!\nLorem ipsum dolor sit amet, consecteturadipis\nicing elit. Est, in unde. Dolor assumenda archite\ncto repellendus vel cum magni totam perferend\nis. Sapiente fugiat mollitia ex blanditiis quidem dignissimos accusamus eveniet! Unde sapient\ne, nulla, nostrum similique a atque, odio blandit\niis et eos cupiditate id!\nLorem ipsum dolor sit amet, consecteturadipis\nicing elit. Est, in unde. Dolor assumenda archite\ncto repellendus vel cum magni totam perferend\nis. Sapiente fugiat mollitia ex blanditiis quidem dignissimos accusamus eveniet! Unde sapient\ne, nulla, nostrum similique a atque, odio blandit\niis et eos cupiditate id!", maxLines: 21, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLarge18))])))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft9(BuildContext context) { Navigator.pop(context); } 
 }
