import 'package:sakuni/presentation/categories_screen/categories_screen.dart';

import '../services_page/widgets/services_item_widget.dart';
import '../services_page/widgets/sliderrectangle_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  ServicesPageState createState() => ServicesPageState();
}

// ignore_for_file: must_be_immutable
class ServicesPageState extends State<ServicesPage>
    with AutomaticKeepAliveClientMixin<ServicesPage>, TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;
  late TabController frame17Controller;

  @override
  void initState() {
    super.initState();

    frame17Controller = TabController(length: 4, vsync: this);
  }

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 12, top: 18, right: 1),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomSearchView(
                                    margin: getMargin(right: 10),
                                    controller: searchController,
                                    hintText: "Search for Products",
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    textStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 21,
                                            top: 15,
                                            right: 19,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSearchPrimarycontainer)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(51)),
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 13,
                                            right: 17,
                                            bottom: 13),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFrame7)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(51)),
                                    filled: true,
                                    fillColor: theme.colorScheme.primary,
                                    contentPadding:
                                        getPadding(top: 14, bottom: 14),
                                    defaultBorderDecoration:
                                        SearchViewStyleHelper.outlineGray400,
                                    enabledBorderDecoration:
                                        SearchViewStyleHelper.outlineGray400,
                                    focusedBorderDecoration:
                                        SearchViewStyleHelper.outlineGray400,
                                    disabledBorderDecoration:
                                        SearchViewStyleHelper.outlineGray400),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    height: getVerticalSize(85),
                                    width: getHorizontalSize(412),
                                    margin: getMargin(left: 1, top: 10),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage40,
                                            height: getVerticalSize(36),
                                            width: getHorizontalSize(68),
                                            alignment: Alignment.topRight,
                                            margin:
                                                getMargin(top: 13, right: 80)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: ListView.separated(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(1));
                                                },
                                                itemCount: 5,
                                                itemBuilder: (context, index) {
                                                  return ServicesItemWidget(
                                                      onTapColumnelectrici: () {
                                                    onTapColumnelectrici(
                                                        context);
                                                  });
                                                }))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(150),
                                  width: getHorizontalSize(403),
                                  margin: getMargin(top: 18),
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
                                              scrollDirection: Axis.horizontal,
                                              onPageChanged: (index, reason) {
                                                sliderIndex = index;
                                              }),
                                          itemCount: 1,
                                          itemBuilder:
                                              (context, index, realIndex) {
                                            return SliderrectangleItemWidget();
                                          }),
                                    ],
                                  ),
                                ),
                                TabBar(
                                  controller: frame17Controller,
                                  labelColor: Colors.black,
                                  unselectedLabelColor: Colors.black,
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        "Recently Viewed",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CategoriesScreen(),
                                            ));
                                      },
                                      child: Tab(
                                        child: Text(
                                          "Categories",
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        "Top Offer",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        "New",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(8),
                                        margin: getMargin(bottom: 5),
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: sliderIndex,
                                            count: 1,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                                spacing: 6.01,
                                                activeDotColor:
                                                    theme.colorScheme.primary,
                                                dotColor:
                                                    theme.colorScheme.primary,
                                                dotHeight: getVerticalSize(8),
                                                dotWidth:
                                                    getHorizontalSize(8)))))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(children: [
                            Container(
                                padding: getPadding(
                                    left: 5, top: 7, right: 5, bottom: 7),
                                decoration: AppDecoration.fill1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle3121,
                                          height: getVerticalSize(121),
                                          width: getHorizontalSize(188)),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text(
                                              "Lorem ipsum dolor sit ...",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLarge16)),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text("TZS3000 . 2 hrs",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Text("Classic Cleaning Home",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Padding(
                                          padding:
                                              getPadding(top: 5, bottom: 9),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEye,
                                                height: getVerticalSize(12),
                                                width: getHorizontalSize(68),
                                                margin: getMargin(bottom: 2)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 4, top: 1, bottom: 1),
                                                child: Text("(5.7K)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelMedium)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSettings,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(
                                                    left: 23, top: 1)),
                                            Text("40% off",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBluegray400)
                                          ]))
                                    ])),
                            Container(
                                margin: getMargin(left: 6),
                                padding: getPadding(
                                    left: 5, top: 7, right: 5, bottom: 7),
                                decoration: AppDecoration.fill1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRectangle3121121x188,
                                          height: getVerticalSize(121),
                                          width: getHorizontalSize(188)),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text(
                                              "Lorem ipsum dolor sit ...",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLarge16)),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text("TZS3000 . 2 hrs",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Text("Beauty Services",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Padding(
                                          padding:
                                              getPadding(top: 5, bottom: 9),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEye,
                                                height: getVerticalSize(12),
                                                width: getHorizontalSize(68),
                                                margin: getMargin(bottom: 2)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 4, top: 1, bottom: 1),
                                                child: Text("(5.7K)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelMedium)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSettings,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(
                                                    left: 23, top: 1)),
                                            Text("40% off",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBluegray400)
                                          ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Text("Top Offers",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium)),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 2, bottom: 2),
                                child: Text("See All",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLargeBlue700)),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(21),
                                width: getSize(21),
                                margin: getMargin(left: 2, bottom: 3))
                          ])),
                      Padding(
                          padding: getPadding(left: 2, top: 14),
                          child: Row(children: [
                            Container(
                                padding: getPadding(
                                    left: 5, top: 7, right: 5, bottom: 7),
                                decoration: AppDecoration.fill1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle31211,
                                          height: getVerticalSize(121),
                                          width: getHorizontalSize(188)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text(
                                              "Lorem ipsum dolor sit ...",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLarge16)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("TZS3000 . 2 hrs",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("Fan Repair",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Padding(
                                          padding:
                                              getPadding(top: 4, bottom: 10),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEye,
                                                height: getVerticalSize(12),
                                                width: getHorizontalSize(68),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding:
                                                    getPadding(left: 4, top: 1),
                                                child: Text("(5.7K)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelMedium)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSettings,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(
                                                    left: 23, top: 2)),
                                            Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("40% off",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray400))
                                          ]))
                                    ])),
                            Container(
                                margin: getMargin(left: 1),
                                padding: getPadding(
                                    left: 5, top: 7, right: 5, bottom: 7),
                                decoration: AppDecoration.fill1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle3121,
                                          height: getVerticalSize(121),
                                          width: getHorizontalSize(188)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text(
                                              "Lorem ipsum dolor sit ...",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLarge16)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("TZS3000 . 2 hrs",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("Classic Cleaning Home",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Padding(
                                          padding:
                                              getPadding(top: 4, bottom: 5),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEye,
                                                height: getVerticalSize(12),
                                                width: getHorizontalSize(68),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding:
                                                    getPadding(left: 4, top: 1),
                                                child: Text("(5.7K)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelMedium)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSettings,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(
                                                    left: 23, top: 2)),
                                            Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("40% off",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray400))
                                          ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 77),
                          child: SizedBox(
                              width: getHorizontalSize(50),
                              child: Divider(
                                  height: getVerticalSize(6),
                                  thickness: getVerticalSize(6),
                                  color: appTheme.lime500)))
                    ])))));
  }

  /// Navigates to the detailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the detailsScreen.
  onTapColumnelectrici(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsScreen);
  }
}
