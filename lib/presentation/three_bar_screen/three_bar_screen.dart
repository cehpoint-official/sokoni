import 'package:flutter_svg/flutter_svg.dart';
import 'package:sakuni/presentation/about_one_screen/about_one_screen.dart';
import 'package:sakuni/presentation/address_one_screen/address_one_screen.dart';
import 'package:sakuni/presentation/categories_one_screen/categories_one_screen.dart';
import 'package:sakuni/presentation/feedback_one_screen/feedback_one_screen.dart';
import 'package:sakuni/presentation/feedback_screen/feedback_screen.dart';
import 'package:sakuni/presentation/help_and_support_one_screen/help_and_support_one_screen.dart';
import 'package:sakuni/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:sakuni/presentation/orders_one_page/orders_one_page.dart';
import 'package:sakuni/presentation/orders_screen/orders_screen.dart';
import 'package:sakuni/presentation/orders_three_screen/widgets/orders_three_item_widget.dart';
import 'package:sakuni/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:sakuni/presentation/profile_screen/profile_screen.dart';
import 'package:sakuni/presentation/profile_two_screen/profile_two_screen.dart';
import 'package:sakuni/presentation/requirements_page/requirements_page.dart';
import 'package:sakuni/presentation/requirements_tab_container_screen/requirements_tab_container_screen.dart';
import 'package:sakuni/presentation/save_five_screen/save_five_screen.dart';
import 'package:sakuni/presentation/save_one_screen/save_one_screen.dart';
import 'package:sakuni/presentation/save_screen/save_screen.dart';
import 'package:sakuni/presentation/settings_one_screen/settings_one_screen.dart';
import 'package:sakuni/presentation/settings_screen/settings_screen.dart';

import '../help_and_support_screen/help_and_support_screen.dart';
import '../three_bar_screen/widgets/sliderrectangle7_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';
import 'package:sakuni/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';
import 'package:sakuni/widgets/custom_bottom_bar.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';
import 'package:sakuni/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ThreeBarScreen extends StatelessWidget {
  ThreeBarScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  int sliderIndex = 1;

  TextEditingController group272Controller = TextEditingController();

  TextEditingController group273Controller = TextEditingController();

  TextEditingController group275Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: getVerticalSize(806),
                width: double.maxFinite,
                decoration: AppDecoration.fill1,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: getMargin(
                              left: 12, top: 76, right: 11, bottom: 678),
                          padding: getPadding(
                              left: 4, top: 12, right: 4, bottom: 12),
                          decoration: AppDecoration.outline19.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSearchIndigo600,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 8, top: 3)),
                                Padding(
                                    padding:
                                        getPadding(left: 19, top: 2, bottom: 1),
                                    child: Text("Search for Products",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodyLargeIndigo600)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgIconsaxLinearCamera,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 1, bottom: 1)),
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgIconsaxlinearmicrophone2,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin:
                                        getMargin(left: 28, top: 1, bottom: 1))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 12, top: 243, right: 11),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: getVerticalSize(150),
                                    width: getHorizontalSize(403),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CarouselSlider.builder(
                                              options: CarouselOptions(
                                                  height: getVerticalSize(150),
                                                  initialPage: 0,
                                                  autoPlay: true,
                                                  viewportFraction: 1.0,
                                                  enableInfiniteScroll: false,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  onPageChanged:
                                                      (index, reason) {
                                                    sliderIndex = index;
                                                  }),
                                              itemCount: 1,
                                              itemBuilder:
                                                  (context, index, realIndex) {
                                                return Sliderrectangle7ItemWidget();
                                              }),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getVerticalSize(8),
                                                  margin: getMargin(bottom: 4),
                                                  child: AnimatedSmoothIndicator(
                                                      activeIndex: sliderIndex,
                                                      count: 1,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 6,
                                                          activeDotColor: theme
                                                              .colorScheme
                                                              .primary,
                                                          dotColor: theme
                                                              .colorScheme
                                                              .primary,
                                                          dotHeight:
                                                              getVerticalSize(
                                                                  8),
                                                          dotWidth:
                                                              getHorizontalSize(
                                                                  8)))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              padding: getPadding(all: 10),
                                              decoration: AppDecoration.fill12
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder6),
                                              child: Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("Recently Viewed",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyLargePrimary16))),
                                          Container(
                                            padding: getPadding(all: 10),
                                            decoration: AppDecoration.outline20
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6),
                                            child: Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Categories",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodyLargeBluegray400),
                                            ),
                                          ),
                                          Container(
                                              padding: getPadding(all: 10),
                                              decoration: AppDecoration
                                                  .outline20
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder6),
                                              child: Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("Top Offers",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyLargeBluegray400))),
                                          CustomOutlinedButton(
                                              width: getHorizontalSize(52),
                                              height: getVerticalSize(42),
                                              text: "New",
                                              buttonStyle: CustomButtonStyles
                                                  .outlineBluegray400,
                                              buttonTextStyle: CustomTextStyles
                                                  .bodyLargeBluegray400)
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: getPadding(left: 12, top: 142),
                          child: Row(children: [
                            SizedBox(
                                height: getVerticalSize(83),
                                width: getHorizontalSize(76),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(81),
                                              width: getHorizontalSize(76),
                                              decoration: BoxDecoration(
                                                  color: appTheme.lime50,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              10))))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              height: getVerticalSize(70),
                                              width: getHorizontalSize(58),
                                              margin: getMargin(left: 2),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage3,
                                                        height:
                                                            getVerticalSize(70),
                                                        width:
                                                            getHorizontalSize(
                                                                57),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage4,
                                                        height: getSize(31),
                                                        width: getSize(31),
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        margin: getMargin(
                                                            bottom: 13))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: getPadding(bottom: 7),
                                              child: Text("Electronics",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall)))
                                    ])),
                            Container(
                                margin: getMargin(left: 7, top: 2),
                                padding: getPadding(
                                    left: 10, top: 5, right: 10, bottom: 5),
                                decoration: AppDecoration.fill8.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage5,
                                          height: getSize(50),
                                          width: getSize(50)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 1),
                                              child: Text("Mobiles",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall)))
                                    ])),
                            Container(
                                margin: getMargin(left: 8, top: 2),
                                padding: getPadding(left: 9, right: 9),
                                decoration: AppDecoration.fill8.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage6,
                                          height: getVerticalSize(56),
                                          width: getHorizontalSize(55)),
                                      Padding(
                                          padding:
                                              getPadding(top: 3, bottom: 7),
                                          child: Text("Fashion",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodySmall))
                                    ]))
                          ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          margin: getMargin(top: 144, right: 86),
                          padding: getPadding(
                              left: 19, top: 6, right: 19, bottom: 6),
                          decoration: AppDecoration.fill8.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Padding(
                              padding: getPadding(top: 56),
                              child: Text("grocery",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodySmall)))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          margin: getMargin(top: 144, right: 2),
                          padding: getPadding(left: 3, right: 3),
                          decoration: AppDecoration.fill8.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: getSize(65),
                                    width: getSize(65),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage8,
                                              height: getSize(56),
                                              width: getSize(56),
                                              alignment: Alignment.topLeft),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage9,
                                              height: getSize(37),
                                              width: getSize(37),
                                              alignment: Alignment.bottomRight)
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(bottom: 7),
                                        child: Text("Home",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall)))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: getVerticalSize(56),
                      width: getHorizontalSize(75),
                      alignment: Alignment.topRight,
                      margin: getMargin(top: 147, right: 81)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: getPadding(left: 12, bottom: 152),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Container(
                                      padding: getPadding(left: 5, right: 5),
                                      decoration: AppDecoration.fill3.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage48,
                                                height: getSize(109),
                                                width: getSize(109)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, bottom: 6),
                                                child: Text("Mobiles",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ])),
                                  Container(
                                      margin: getMargin(left: 6),
                                      padding: getPadding(
                                          left: 14,
                                          top: 6,
                                          right: 14,
                                          bottom: 6),
                                      decoration: AppDecoration.fill3.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage16,
                                                height: getVerticalSize(93),
                                                width: getHorizontalSize(78),
                                                margin: getMargin(top: 1)),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Text("Smart Watches",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ])),
                                  Container(
                                      margin: getMargin(left: 6),
                                      padding: getPadding(
                                          left: 12,
                                          top: 5,
                                          right: 12,
                                          bottom: 5),
                                      decoration: AppDecoration.fill3.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage19,
                                                height: getSize(93),
                                                width: getSize(93),
                                                margin: getMargin(top: 3)),
                                            Padding(
                                                padding: getPadding(
                                                    top: 8, right: 7),
                                                child: Text("Headphones",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ]))
                                ]),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Text("Top Rated",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium))
                              ]))),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          margin: getMargin(bottom: 193),
                          padding: getPadding(top: 4, bottom: 4),
                          decoration: AppDecoration.fill3.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Padding(
                              padding: getPadding(top: 105),
                              child: Text("Laptops",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyMedium)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage1885x38,
                      height: getVerticalSize(85),
                      width: getHorizontalSize(38),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(bottom: 223)),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 12, top: 665, bottom: 6),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Container(
                                    margin: getMargin(top: 3),
                                    padding: getPadding(left: 5, right: 5),
                                    decoration: AppDecoration.fill3.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage48,
                                              height: getSize(109),
                                              width: getSize(109)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 28, bottom: 6),
                                              child: Text("Mobiles",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyMedium))
                                        ])),
                                Container(
                                    margin: getMargin(left: 6, top: 3),
                                    padding: getPadding(
                                        left: 8, top: 5, right: 8, bottom: 5),
                                    decoration: AppDecoration.fill3.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage23,
                                              height: getSize(98),
                                              width: getSize(98)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 1),
                                              child: Text("Smart Watches",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyMedium))
                                        ])),
                                Container(
                                    height: getVerticalSize(133),
                                    width: getHorizontalSize(120),
                                    margin: getMargin(left: 6),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 19,
                                                      top: 5,
                                                      right: 19,
                                                      bottom: 5),
                                                  decoration: AppDecoration
                                                      .fill3
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 104),
                                                      child: Text("Headphones",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodyMedium)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage49,
                                              height: getSize(107),
                                              width: getSize(107),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(right: 3))
                                        ])),
                                Container(
                                    height: getVerticalSize(130),
                                    width: getHorizontalSize(120),
                                    margin: getMargin(left: 4, top: 3),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage1885x38,
                                              height: getVerticalSize(85),
                                              width: getHorizontalSize(38),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(top: 16)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 4,
                                                      right: 13,
                                                      bottom: 4),
                                                  decoration: AppDecoration
                                                      .fill3
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 105),
                                                      child: Text("Laptops",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodyMedium))))
                                        ]))
                              ])))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomAppBar(
                                height: getVerticalSize(56),
                                title: Padding(
                                    padding: getPadding(left: 19),
                                    child: Row(children: [
                                      AppbarSubtitle3(
                                          text: "Products",
                                          margin: getMargin(bottom: 2)),
                                      AppbarSubtitle3(
                                          text: "Properties",
                                          margin: getMargin(left: 74, top: 2))
                                    ])),
                                actions: [
                                  AppbarSubtitle3(
                                      text: "Services",
                                      margin: getMargin(
                                          left: 19,
                                          top: 14,
                                          right: 19,
                                          bottom: 18))
                                ],
                                styleType: Style.bgFill_1),
                            Container(
                                height: getVerticalSize(7),
                                width: getHorizontalSize(88),
                                margin: getMargin(left: 12),
                                decoration: BoxDecoration(
                                    color: appTheme.lime500,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(3))))
                          ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgSpot,
                      height: getVerticalSize(804),
                      width: getHorizontalSize(427),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 24, top: 22, right: 24, bottom: 22),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Home",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgHome)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomeTabContainerScreen(),
                                                        ));
                                                  })),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Orders",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCalendar)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              OrdersScreen(),
                                                        ));
                                                  })),
                                        ])),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Requirements",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconsaxlinearmessageBlack90001)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              RequirementsTabContainerScreen(),
                                                        ));
                                                  })),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Save",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFile)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              SaveFiveScreen(),
                                                        ));
                                                  })),
                                        ])),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Categories",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconamooncategorythin)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              CategoriesOneScreen(),
                                                        ));
                                                  })),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Profile",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSolaruserbrokendefault)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProfileTwoScreen(),
                                                        ));
                                                  })),
                                        ])),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Address",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFluentlocation16regular)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              AddressOneScreen(),
                                                        ));
                                                  })),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Payment",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Icon(Icons.money),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentOneScreen(),
                                                        ));
                                                  })),
                                        ])),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "About",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgInfo)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              AboutOneScreen(),
                                                        ));
                                                  })),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Feedback",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFluentpersonfeedback20regular)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              FeedbackOneScreen(),
                                                        ));
                                                  })),
                                        ])),
                                Padding(
                                    padding: getPadding(top: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Help & \nSupport",
                                                  margin: getMargin(right: 8),
                                                  leftIcon: SvgPicture.string(
                                                      ImageConstant
                                                          .imgQuestion),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              HelpAndSupportOneScreen(),
                                                        ));
                                                  })),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  width: double.maxFinite,
                                                  height: getVerticalSize(65),
                                                  text: "Settings",
                                                  margin: getMargin(left: 8),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearchIndigo90001)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo90001,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumInterIndigo90001,
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              SettingsOneScreen(),
                                                        ));
                                                  }))
                                        ]))
                              ])))
                ])),
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

  /// Navigates to the categoriesOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the categoriesOneScreen.
  onTapCategoriesone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categoriesOneScreen);
  }

  /// Navigates to the aboutOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the aboutOneScreen.
  onTapAbout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutOneScreen);
  }

  /// Navigates to the feedbackOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the feedbackOneScreen.
  onTapFeedbaack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.feedbackOneScreen);
  }

  /// Navigates to the addressOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the addressOneScreen.
  onTapAddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressOneScreen);
  }

  /// Navigates to the helpAndSupportOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the helpAndSupportOneScreen.
  onTapRowquestion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.helpAndSupportOneScreen);
  }

  /// Navigates to the settingsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsOneScreen.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsOneScreen);
  }
}
