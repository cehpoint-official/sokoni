import '../orders_three_screen/widgets/orders_three_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';
import 'package:sakuni/widgets/custom_text_form_field.dart';

class OrdersThreeScreen extends StatelessWidget {
  OrdersThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController group233Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray20005,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            53,
          ),
          title: CustomElevatedButton(
            width: getHorizontalSize(
              200,
            ),
            height: getVerticalSize(
              37,
            ),
            text: "Order Details",
            margin: getMargin(
              left: 16,
            ),
            leftIcon: Container(
              margin: getMargin(
                right: 30,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowleft,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            buttonTextStyle: theme.textTheme.titleLarge!,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                29,
              ),
              width: getSize(
                29,
              ),
              svgPath: ImageConstant.imgSearchPrimary31x30,
              margin: getMargin(
                left: 14,
                top: 17,
                right: 14,
                bottom: 6,
              ),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 14,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 21,
                    ),
                    child: Text(
                      "Order ID: 125567788899089",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodyLargeGray400,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 19,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: appTheme.black90001.withOpacity(0.15),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 14,
                      top: 31,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle3161,
                          height: getVerticalSize(
                            96,
                          ),
                          width: getHorizontalSize(
                            107,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              6,
                            ),
                          ),
                          margin: getMargin(
                            bottom: 38,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Bulbs installation",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    CustomTextStyles.bodyLargeBluegray90001_1,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "1 Service . 1 offer",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumGreenA700,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "Seller: XYZ Company",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Text(
                                  "The quick brown fox jumps over the lazy dog.",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumBlack90001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                ),
                                child: Text(
                                  "TZS500",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 33,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: appTheme.gray90035,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 29,
                      top: 31,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup2219BlueGray10001,
                          height: getVerticalSize(
                            188,
                          ),
                          width: getHorizontalSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 8,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 17,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                  ),
                                  child: Text(
                                    "Order Confirmed",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "Jul 10",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.bodyLargeBlack9000116,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 36,
                                  ),
                                  child: Text(
                                    "Ready to serve",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "Jul 10",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.bodyLargeBlack9000116,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 16,
                                  ),
                                  child: Text(
                                    "Delivery",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Expected by Jul 16,Fri(9am to 10 am)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.bodyLargeBlack9000116,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 60,
                    ),
                    padding: getPadding(
                      left: 27,
                      top: 7,
                      right: 27,
                      bottom: 7,
                    ),
                    decoration: AppDecoration.fill7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 12,
                            bottom: 9,
                          ),
                          child: Text(
                            "Need help?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          width: getHorizontalSize(
                            111,
                          ),
                          height: getVerticalSize(
                            44,
                          ),
                          text: "Message",
                          leftIcon: Container(
                            margin: getMargin(
                              right: 6,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgUserPrimary,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillBlue700TL8,
                          buttonTextStyle: CustomTextStyles.bodyLargePrimary16,
                        ),
                        CustomTextFormField(
                          width: getHorizontalSize(
                            83,
                          ),
                          controller: group233Controller,
                          margin: getMargin(
                            left: 15,
                          ),
                          contentPadding: getPadding(
                            top: 12,
                            right: 16,
                            bottom: 12,
                          ),
                          textStyle: CustomTextStyles.bodyLargePrimary16,
                          hintText: "Call",
                          hintStyle: CustomTextStyles.bodyLargePrimary16,
                          prefix: Container(
                            margin: getMargin(
                              left: 7,
                              top: 10,
                              right: 8,
                              bottom: 10,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgIcroundcallGray20004,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              44,
                            ),
                          ),
                          filled: true,
                          fillColor: appTheme.blue700,
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.fillBlue700,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.fillBlue700,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.fillBlue700,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.fillBlue700,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      161,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 14,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              bottom: 74,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: appTheme.black90001.withOpacity(0.06),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: getPadding(
                              left: 23,
                              top: 12,
                              right: 23,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.fill1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Address:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLarge16,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 18,
                                  ),
                                  child: Text(
                                    "Pablo Smith",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    336,
                                  ),
                                  margin: getMargin(
                                    left: 1,
                                    top: 9,
                                    right: 42,
                                  ),
                                  child: Text(
                                    "HOWRAH, STATION ROAD, GR ROAD, FORSHOR ROAD., HOWRAH, WEST BENGAL, India (IN), Pin Code:- 711101",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLarge16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 13,
                    ),
                    padding: getPadding(
                      left: 17,
                      top: 15,
                      right: 17,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.fill1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Price Details:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodyLarge16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 21,
                            right: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Price(1 Service)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleMedium16,
                              ),
                              Text(
                                "TZS550",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyLarge16,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 21,
                            right: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Discount",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleMedium16,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                  "TZS50",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyLarge16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 22,
                            right: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Charges",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleMedium16,
                              ),
                              Text(
                                "TZS20",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyLarge16,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 31,
                            right: 2,
                            bottom: 7,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Amount Payable",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleMedium16,
                              ),
                              Text(
                                "TZS520",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyLarge16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 44,
                    ),
                    child: Text(
                      "Are you looking for?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 14,
                      top: 16,
                      right: 3,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          246,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          6,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          6,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return OrdersThreeItemWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
