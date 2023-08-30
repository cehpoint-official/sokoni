import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                title: CustomElevatedButton(
                    width: getHorizontalSize(234),
                    height: getVerticalSize(37),
                    text: "Payment Details",
                    margin: getMargin(left: 11),
                    leftIcon: Container(
                        margin: getMargin(right: 30),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowleft)),
                    buttonStyle: CustomButtonStyles.none,
                    buttonTextStyle: theme.textTheme.titleLarge!,
                    onTap: () {
                      onTapPaymentdetails(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(27),
                      width: getHorizontalSize(28),
                      svgPath: ImageConstant.imgIcroundcallGray20004,
                      margin:
                          getMargin(left: 11, top: 19, right: 11, bottom: 19))
                ],
                styleType: Style.bgFill_1),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 26, bottom: 26),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 16, top: 21),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgImage53113x113,
                                      height: getVerticalSize(113),
                                      width: getHorizontalSize(111),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(8))),
                                  Padding(
                                      padding: getPadding(
                                          left: 11, top: 9, bottom: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("SUMSUNG M04",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90001),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text("10 pcs",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyMediumGreen80002)),
                                            Padding(
                                                padding: getPadding(top: 7),
                                                child: Text(
                                                    "Seller: XYZ seller",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium)),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text(
                                                    "The quick brown fox jumps over the lazy dog.",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90001))
                                          ]))
                                ])),
                        Container(
                            margin: getMargin(top: 56),
                            padding: getPadding(
                                left: 13, top: 10, right: 13, bottom: 10),
                            decoration: AppDecoration.fill7,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 6),
                                                child: Text("Deliver to:",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16)),
                                            CustomOutlinedButton(
                                                width: getHorizontalSize(84),
                                                height: getVerticalSize(29),
                                                text: "Change",
                                                buttonStyle: CustomButtonStyles
                                                    .outlineBlue700TL4,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .bodyLargeBlue700)
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 2, top: 4),
                                      child: Text("Pablo Smith",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium)),
                                  Container(
                                      width: getHorizontalSize(336),
                                      margin: getMargin(
                                          left: 3,
                                          top: 9,
                                          right: 59,
                                          bottom: 3),
                                      child: Text(
                                          "HOWRAH, STATION ROAD, GR ROAD, FORSHOR ROAD., HOWRAH, WEST BENGAL, India (IN), Pin Code:- 711101",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles.bodyLarge16))
                                ])),
                        Container(
                            margin: getMargin(top: 14),
                            padding: getPadding(top: 5, bottom: 5),
                            decoration: AppDecoration.outline15,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(left: 18),
                                          child: Text("Price Details:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLarge16))),
                                  Padding(
                                      padding: getPadding(
                                          left: 18, top: 30, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("Price(10pcs)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMedium16)),
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("TZS102,000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 18, top: 22, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("Quantity ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMedium16)),
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("10 pcs",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 18, top: 18, right: 17),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 3),
                                                child: Text("Discount",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMedium16)),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text("TZS20,000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 18, top: 21, right: 21),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Delivery Charges",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleMedium16),
                                            Text("2000",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodyLarge16)
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 13),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.black90001
                                              .withOpacity(0.16))),
                                  Padding(
                                      padding: getPadding(
                                          left: 18,
                                          top: 15,
                                          right: 18,
                                          bottom: 17),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("Amount Payable",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMedium16)),
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("TZS102,000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(left: 20, top: 13, right: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage104,
                                      height: getVerticalSize(16),
                                      width: getHorizontalSize(67),
                                      margin: getMargin(top: 8, bottom: 8)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage103,
                                      height: getVerticalSize(32),
                                      width: getHorizontalSize(38)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage105,
                                      height: getVerticalSize(23),
                                      width: getHorizontalSize(47),
                                      margin: getMargin(top: 4, bottom: 4)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage106,
                                      height: getVerticalSize(27),
                                      width: getHorizontalSize(49),
                                      margin: getMargin(top: 2, bottom: 2))
                                ]))
                      ]),
                )),
            bottomNavigationBar: Container(
                margin: getMargin(left: 55, right: 28, bottom: 17),
                decoration: AppDecoration.outline16,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 12, bottom: 6),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 11),
                                    child: Text("Total Amount",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyMedium)),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Text("TZS102,000",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ])),
                      CustomElevatedButton(
                          width: getHorizontalSize(168),
                          height: getVerticalSize(68),
                          text: "Continue",
                          buttonStyle: CustomButtonStyles.fillLime500,
                          buttonTextStyle: theme.textTheme.bodyLarge!,
                          onTap: () {
                            onTapContinue(context);
                          })
                    ]))));
  }

  /// Navigates to the chatOneTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the chatOneTabContainerScreen.
  onTapPaymentdetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatOneTabContainerScreen);
  }

  /// Navigates to the paymentTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the paymentTwoScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentTwoScreen);
  }
}
