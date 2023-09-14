import '../categories_screen/widgets/categories_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20002,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                title: CustomElevatedButton(
                    width: getHorizontalSize(210),
                    height: getVerticalSize(37),
                    text: "All Categories",
                    margin: getMargin(left: 14),
                    leftIcon: Container(
                        margin: getMargin(right: 30),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowleft)),
                    buttonStyle: CustomButtonStyles.none,
                    buttonTextStyle: theme.textTheme.titleLarge!,
                    onTap: () {
                      onTapAllcategories(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(29),
                      width: getHorizontalSize(25),
                      svgPath: ImageConstant.imgContrast,
                      margin:
                          getMargin(left: 18, top: 16, right: 18, bottom: 6))
                ],
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 23),
                    child: Padding(
                        padding: getPadding(left: 11, right: 6, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 3),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3141,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(right: 4))),
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3143,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(
                                                    left: 4, right: 4))),
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3139,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(
                                                    left: 4, right: 4))),
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3142,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(left: 4)))
                                      ])),
                              Container(
                                  height: getVerticalSize(202),
                                  width: getHorizontalSize(397),
                                  margin: getMargin(left: 6, top: 7),
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(bottom: 52),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle3140,
                                                          height:
                                                              getVerticalSize(
                                                                  84),
                                                          width:
                                                              getHorizontalSize(
                                                                  93),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      3))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle3144,
                                                          height:
                                                              getVerticalSize(
                                                                  84),
                                                          width:
                                                              getHorizontalSize(
                                                                  93),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      3)),
                                                          margin: getMargin(
                                                              left: 8)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle3145,
                                                          height:
                                                              getVerticalSize(
                                                                  84),
                                                          width:
                                                              getHorizontalSize(
                                                                  93),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      3)),
                                                          margin: getMargin(
                                                              left: 8)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle3146,
                                                          height:
                                                              getVerticalSize(
                                                                  84),
                                                          width:
                                                              getHorizontalSize(
                                                                  93),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      3)),
                                                          margin: getMargin(
                                                              left: 8))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(right: 11),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  46),
                                                          child: Text(
                                                              "Fan\nRepair",
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .bodyLarge16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              top: 112),
                                                          child: Row(children: [
                                                            SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        46),
                                                                child: Text(
                                                                    "Ac\nRepair",
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: CustomTextStyles
                                                                        .bodyLarge16)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        71),
                                                                margin: getMargin(
                                                                    left: 42),
                                                                child: Text(
                                                                    "Air Cooler\nRepair",
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: CustomTextStyles
                                                                        .bodyLarge16)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        71),
                                                                margin: getMargin(
                                                                    left: 30),
                                                                child: Text(
                                                                    "Air Cooler\nRepair",
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: CustomTextStyles
                                                                        .bodyLarge16))
                                                          ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 19, right: 29),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(children: [
                                                        SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    42),
                                                            child: Text(
                                                                "Light\nSetup",
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: CustomTextStyles
                                                                    .bodyLarge16)),
                                                        SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    85),
                                                            child: Text(
                                                                "Refrigerator\nRepair",
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: CustomTextStyles
                                                                    .bodyLarge16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 35,
                                                                top: 13,
                                                                bottom: 12),
                                                            child: Text(
                                                                "Wiring",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodyLarge16))
                                                      ]),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  50),
                                                          margin: getMargin(
                                                              left: 2,
                                                              top: 113),
                                                          child: Text(
                                                              "Laptop\nRepair",
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .bodyLarge16))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 7, top: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3147,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(right: 4))),
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3148,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(
                                                    left: 4, right: 4))),
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3149,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(
                                                    left: 4, right: 4))),
                                        Expanded(
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3150,
                                                height: getVerticalSize(84),
                                                width: getHorizontalSize(93),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(3)),
                                                margin: getMargin(left: 4)))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(left: 25, top: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                                width: getHorizontalSize(46),
                                                child: Text("TV\nRepair",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodyLarge16)),
                                            Spacer(),
                                            SizedBox(
                                                width: getHorizontalSize(55),
                                                child: Text("Inverter\nRepair",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodyLarge16)),
                                            Container(
                                                width: getHorizontalSize(78),
                                                margin: getMargin(left: 34),
                                                child: Text("Microwave\nRepair",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodyLarge16)),
                                            Container(
                                                width: getHorizontalSize(96),
                                                margin: getMargin(left: 12),
                                                child: Text(
                                                    "Water purifier\nRepair",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodyLarge16))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 35),
                                  child: Text("Recommended Services ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleMedium)),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(246),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(6),
                                              crossAxisSpacing:
                                                  getHorizontalSize(6)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return CategoriesItemWidget();
                                      }))
                            ]))))));
  }

  /// Navigates to the servicesTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the servicesTabContainerScreen.
  onTapAllcategories(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesTabContainerScreen);
  }
}
