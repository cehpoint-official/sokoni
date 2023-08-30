import '../categories_one_screen/widgets/categories_one1_item_widget.dart';
import '../categories_one_screen/widgets/categories_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/appbar_subtitle.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';

class CategoriesOneScreen extends StatelessWidget {
  const CategoriesOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(55),
                leadingWidth: 51,
                leading: AppbarImage(
                    height: getSize(37),
                    width: getSize(37),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 14, top: 9, bottom: 8),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                title: AppbarSubtitle(
                    text: "All Categories", margin: getMargin(left: 30)),
                actions: [
                  AppbarImage(
                      height: getSize(25),
                      width: getSize(25),
                      svgPath: ImageConstant.imgSearchPrimary24x23,
                      margin:
                          getMargin(left: 18, top: 14, right: 18, bottom: 15))
                ],
                styleType: Style.bgFill_1),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.95, 1.09),
                        colors: [
                      theme.colorScheme.primary,
                      theme.colorScheme.primary,
                      appTheme.lightBlue800
                    ])),
                child: SingleChildScrollView(
                    padding: getPadding(top: 12),
                    child: Padding(
                        padding: getPadding(left: 12, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 11, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height: getSize(72),
                                            width: getSize(72),
                                            margin:
                                                getMargin(top: 2, bottom: 2),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapRectangle3073(
                                                                context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getSize(72),
                                                              width:
                                                                  getSize(72),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .indigo5001,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(12)))))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage7654x72,
                                                      height:
                                                          getVerticalSize(54),
                                                      width:
                                                          getHorizontalSize(72),
                                                      alignment:
                                                          Alignment.center)
                                                ])),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin:
                                                getMargin(top: 2, bottom: 2),
                                            color: appTheme.indigo5001,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Container(
                                                height: getSize(72),
                                                width: getSize(72),
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 2,
                                                    right: 12,
                                                    bottom: 2),
                                                decoration: AppDecoration.fill7
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage78,
                                                      height:
                                                          getVerticalSize(66),
                                                      width:
                                                          getHorizontalSize(47),
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin:
                                                getMargin(top: 2, bottom: 2),
                                            color: appTheme.indigo5001,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Container(
                                                height: getSize(72),
                                                width: getSize(72),
                                                padding: getPadding(
                                                    left: 5,
                                                    top: 6,
                                                    right: 5,
                                                    bottom: 6),
                                                decoration: AppDecoration.fill7
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImage79,
                                                          height:
                                                              getVerticalSize(
                                                                  37),
                                                          width:
                                                              getHorizontalSize(
                                                                  43),
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin: getMargin(
                                                              top: 1)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage80,
                                                          height: getSize(44),
                                                          width: getSize(44),
                                                          alignment: Alignment
                                                              .bottomRight)
                                                    ]))),
                                        SizedBox(
                                            height: getSize(77),
                                            width: getSize(77),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: getSize(72),
                                                          width: getSize(72),
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .indigo5001,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          12))))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage81,
                                                      height: getSize(77),
                                                      width: getSize(77),
                                                      alignment:
                                                          Alignment.center)
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(left: 26, top: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Mobiles",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelMediumBlack90001),
                                            Spacer(flex: 53),
                                            Text("Fashion",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelMediumBlack90001),
                                            Spacer(flex: 46),
                                            Text("Electronics",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelMediumBlack90001),
                                            Padding(
                                                padding: getPadding(left: 40),
                                                child: Text("Personal Care",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 11, top: 15),
                                  child: Row(children: [
                                    Container(
                                        height: getVerticalSize(72),
                                        width: getHorizontalSize(93),
                                        margin: getMargin(bottom: 2),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: getSize(72),
                                                      width: getSize(72),
                                                      margin:
                                                          getMargin(left: 5),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .indigo5001,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      12))))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage85,
                                                  height: getVerticalSize(46),
                                                  width: getHorizontalSize(93),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  margin: getMargin(top: 8))
                                            ])),
                                    Container(
                                        height: getVerticalSize(72),
                                        width: getHorizontalSize(74),
                                        margin: getMargin(left: 19, bottom: 2),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: getSize(72),
                                                      width: getSize(72),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .indigo5001,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      12))))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage86,
                                                  height: getVerticalSize(50),
                                                  width: getHorizontalSize(74),
                                                  alignment: Alignment.center)
                                            ])),
                                    Container(
                                        height: getVerticalSize(72),
                                        width: getHorizontalSize(78),
                                        margin: getMargin(left: 19, bottom: 2),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: getSize(72),
                                                      width: getSize(72),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .indigo5001,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      12))))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(64),
                                                      width:
                                                          getHorizontalSize(78),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage90,
                                                                height:
                                                                    getSize(53),
                                                                width:
                                                                    getSize(53),
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            1)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage88,
                                                                height:
                                                                    getSize(64),
                                                                width:
                                                                    getSize(64),
                                                                alignment: Alignment
                                                                    .centerLeft)
                                                          ])))
                                            ])),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 22, top: 2),
                                        color: appTheme.indigo5001,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                        child: Container(
                                            height: getSize(72),
                                            width: getSize(72),
                                            padding: getPadding(
                                                left: 8,
                                                top: 7,
                                                right: 8,
                                                bottom: 7),
                                            decoration: AppDecoration.fill7
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage91,
                                                      height:
                                                          getVerticalSize(27),
                                                      width:
                                                          getHorizontalSize(45),
                                                      alignment:
                                                          Alignment.topRight),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage92,
                                                      height:
                                                          getVerticalSize(23),
                                                      width:
                                                          getHorizontalSize(46),
                                                      alignment:
                                                          Alignment.bottomLeft),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage93,
                                                      height: getSize(44),
                                                      width: getSize(44),
                                                      alignment:
                                                          Alignment.center)
                                                ])))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 26, top: 4),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("footwear ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumBlack90001)),
                                    Spacer(flex: 47),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Baby Products",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumBlack90001)),
                                    Padding(
                                        padding:
                                            getPadding(left: 43, bottom: 1),
                                        child: Text("Home",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumBlack90001)),
                                    Spacer(flex: 52),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Eyewear",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumBlack90001))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 11, top: 11, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            height: getVerticalSize(72),
                                            width: getHorizontalSize(75),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: getSize(72),
                                                          width: getSize(72),
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .indigo5001,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          12))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  50),
                                                          width:
                                                              getHorizontalSize(
                                                                  65),
                                                          margin: getMargin(
                                                              bottom: 8),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage94,
                                                                    height:
                                                                        getSize(
                                                                            48),
                                                                    width:
                                                                        getSize(
                                                                            48),
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    margin: getMargin(
                                                                        left:
                                                                            5)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage95,
                                                                    height:
                                                                        getVerticalSize(
                                                                            43),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            65),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter)
                                                              ])))
                                                ])),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: appTheme.indigo5001,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Container(
                                                height: getSize(72),
                                                width: getSize(72),
                                                padding: getPadding(
                                                    left: 1, right: 1),
                                                decoration: AppDecoration.fill7
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage96,
                                                      height: getSize(70),
                                                      width: getSize(70),
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: appTheme.indigo5001,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Container(
                                                height: getSize(72),
                                                width: getSize(72),
                                                padding: getPadding(
                                                    left: 9,
                                                    top: 11,
                                                    right: 9,
                                                    bottom: 11),
                                                decoration: AppDecoration.fill7
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage97,
                                                      height:
                                                          getVerticalSize(49),
                                                      width:
                                                          getHorizontalSize(51),
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: appTheme.indigo5001,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Container(
                                                height: getSize(72),
                                                width: getSize(72),
                                                padding: getPadding(
                                                    left: 5,
                                                    top: 4,
                                                    right: 5,
                                                    bottom: 4),
                                                decoration: AppDecoration.fill7
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage87,
                                                      height: getSize(61),
                                                      width: getSize(61),
                                                      alignment:
                                                          Alignment.center)
                                                ])))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(left: 24, top: 4),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("Furniture",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001)),
                                            Spacer(),
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("Jewellery",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 46, top: 1),
                                                child: Text("luggage bags",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 38, top: 1),
                                                child: Text("packaging",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 10, top: 11, right: 23),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: appTheme.indigo5001,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                                child: Container(
                                                    height: getSize(72),
                                                    width: getSize(72),
                                                    padding: getPadding(
                                                        left: 11,
                                                        top: 7,
                                                        right: 11,
                                                        bottom: 7),
                                                    decoration: AppDecoration
                                                        .fill7
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage98,
                                                          height: getSize(48),
                                                          width: getSize(48),
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                            SizedBox(
                                                height: getVerticalSize(72),
                                                width: getHorizontalSize(75),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(72),
                                                              width:
                                                                  getSize(72),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .indigo5001,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(12))))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage7,
                                                          height:
                                                              getVerticalSize(
                                                                  56),
                                                          width:
                                                              getHorizontalSize(
                                                                  75),
                                                          alignment:
                                                              Alignment.center)
                                                    ])),
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: appTheme.indigo5001,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                                child: Container(
                                                    height: getSize(72),
                                                    width: getSize(72),
                                                    padding: getPadding(
                                                        top: 10, bottom: 10),
                                                    decoration: AppDecoration
                                                        .fill7
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage99,
                                                          height:
                                                              getVerticalSize(
                                                                  46),
                                                          width:
                                                              getHorizontalSize(
                                                                  70),
                                                          alignment: Alignment
                                                              .bottomLeft)
                                                    ]))),
                                            SizedBox(
                                                height: getVerticalSize(72),
                                                width: getHorizontalSize(77),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(72),
                                                              width:
                                                                  getSize(72),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .indigo5001,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(12))))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage100,
                                                          height:
                                                              getVerticalSize(
                                                                  51),
                                                          width:
                                                              getHorizontalSize(
                                                                  77),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 32, top: 3, right: 39),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("Tools",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001)),
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("Grocery",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001)),
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("Sport",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001)),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("Medicine",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelMediumBlack90001))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("Recently Viewed",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeBlack90001)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(left: 2, top: 16),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                  height: getVerticalSize(130),
                                                  child: ListView.separated(
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    10));
                                                      },
                                                      itemCount: 3,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return CategoriesOneItemWidget();
                                                      })),
                                              Container(
                                                  height: getVerticalSize(130),
                                                  width: getHorizontalSize(120),
                                                  margin: getMargin(left: 10),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                            padding: getPadding(
                                                                left: 13,
                                                                top: 4,
                                                                right: 13,
                                                                bottom: 4),
                                                            decoration: AppDecoration
                                                                .fill1
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 105),
                                                              child: Text(
                                                                  "Laptops",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium),
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage18,
                                                            height:
                                                                getVerticalSize(
                                                                    85),
                                                            width: getHorizontalSize(
                                                                118),
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin: getMargin(
                                                                top: 16))
                                                      ]))
                                            ]),
                                      ))),
                              Padding(
                                  padding: getPadding(left: 2, top: 26),
                                  child: Text("Special offers ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeBlack90001)),
                              Padding(
                                  padding: getPadding(top: 15, right: 12),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(238),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(27),
                                              crossAxisSpacing:
                                                  getHorizontalSize(27)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return CategoriesOne1ItemWidget();
                                      }))
                            ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the searchScreen.
  onTapRectangle3073(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}
