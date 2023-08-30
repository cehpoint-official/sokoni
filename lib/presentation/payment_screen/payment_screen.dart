import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';
import 'package:sakuni/presentation/payment_details_screen/payment_details_screen.dart';
import 'package:sakuni/presentation/payment_four_screen/payment_four_screen.dart';
import 'package:sakuni/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:sakuni/widgets/app_bar/appbar_button_1.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';
import 'package:sakuni/widgets/custom_bottom_bar.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';
import 'package:sakuni/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController countrycodeController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(55),
                title: AppbarButton1(
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapPayment(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(28),
                      width: getHorizontalSize(29),
                      svgPath: ImageConstant.imgSearchPrimary,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 12))
                ],
                styleType: Style.bgFill),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 31, right: 16, bottom: 31),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 11),
                              child: Row(children: [
                                Padding(
                                    padding: getPadding(top: 6, bottom: 4),
                                    child: Text("Pay With Sokoni",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(33),
                                    margin: getMargin(left: 13))
                              ])),
                          Container(
                              width: getHorizontalSize(362),
                              margin: getMargin(left: 9, top: 12, right: 21),
                              child: Text(
                                  "Sokoni's Secure Payment System: Ensuring Your Transactions are Protected",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.bodyLargeBlack90001_2)),
                          Container(
                              margin: getMargin(top: 19, bottom: 5),
                              padding: getPadding(
                                  left: 9, top: 18, right: 9, bottom: 18),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomTextFormField(
                                        controller: countrycodeController,
                                        margin: getMargin(top: 21),
                                        contentPadding:
                                            getPadding(top: 11, bottom: 11),
                                        textStyle: CustomTextStyles
                                            .titleLargeBlack90001_1,
                                        hintText: "+91",
                                        hintStyle: CustomTextStyles
                                            .titleLargeBlack90001_1,
                                        textInputAction: TextInputAction.next,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 30, top: 15, bottom: 13),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgComponent1)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(54)),
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 13,
                                                right: 12,
                                                bottom: 8),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgBxscontact)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(54))),
                                    CustomTextFormField(
                                        controller: nameController,
                                        margin: getMargin(top: 22),
                                        contentPadding: getPadding(
                                            left: 14,
                                            top: 17,
                                            right: 14,
                                            bottom: 17),
                                        textStyle: CustomTextStyles
                                            .bodyLargeBluegray400,
                                        hintText: "Product name",
                                        hintStyle: CustomTextStyles
                                            .bodyLargeBluegray400,
                                        textInputAction: TextInputAction.next),
                                    CustomTextFormField(
                                        controller: amountController,
                                        margin: getMargin(top: 22),
                                        contentPadding: getPadding(
                                            left: 14,
                                            top: 17,
                                            right: 14,
                                            bottom: 17),
                                        textStyle: CustomTextStyles
                                            .bodyLargeBluegray400,
                                        hintText: "Amount",
                                        hintStyle: CustomTextStyles
                                            .bodyLargeBluegray400),
                                    CustomElevatedButton(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentFourScreen(),
                                            )),
                                        width: getHorizontalSize(193),
                                        height: getVerticalSize(63),
                                        text: "Pay Now",
                                        margin: getMargin(top: 52),
                                        buttonStyle:
                                            CustomButtonStyles.fillBlue700,
                                        buttonTextStyle:
                                            CustomTextStyles.titleLargeSemiBold)
                                  ]))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Solaruserbrokendefault:
        return AppRoutes.messagesOnePage;
      case BottomBarEnum.Iconsaxlinearmessage:
        return "/";
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Save:
        return "/";
      case BottomBarEnum.Basilmenuoutlinedefault:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesOnePage:
        return MessagesOnePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the servicesTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the servicesTabContainerScreen.
  onTapPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesTabContainerScreen);
  }
}
