import '../properties_page/widgets/list1_item_widget.dart';
import '../properties_page/widgets/listrectangle31_item_widget.dart';
import '../properties_page/widgets/sliderrectangle3_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../search_one_screen/search_one_screen.dart';

// ignore_for_file: must_be_immutable
class PropertiesPage extends StatefulWidget {
  const PropertiesPage({Key? key})
      : super(
          key: key,
        );

  @override
  PropertiesPageState createState() => PropertiesPageState();
}

class PropertiesPageState extends State<PropertiesPage>
    with
        AutomaticKeepAliveClientMixin<PropertiesPage>,
        TickerProviderStateMixin {
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
        body: Container(
          padding: EdgeInsets.all(8),
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                    fit: FlexFit.loose,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                          padding: getPadding(
                            left: 16,
                            top: 18,
                            right: 4,
                          ),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SearchOneScreen(),
                                        ));
                                  },
                                  child: CustomSearchView(
                                      margin:
                                          getMargin(left: 1, top: 16, right: 8),
                                      controller: searchController,
                                      hintText: "Search for Products",
                                      hintStyle:
                                          CustomTextStyles.bodyLargeIndigo600,
                                      textStyle:
                                          CustomTextStyles.bodyLargeIndigo600,
                                      prefix: Container(
                                          margin: getMargin(
                                              left: 13,
                                              top: 15,
                                              right: 19,
                                              bottom: 12),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgSearchIndigo600)),
                                      prefixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(51)),
                                      suffix: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 13,
                                              right: 30,
                                              bottom: 13),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgIconsaxLinearCamera)),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(51)),
                                      filled: true,
                                      fillColor: appTheme.indigo5001,
                                      contentPadding:
                                          getPadding(top: 13, bottom: 13)),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    150,
                                  ),
                                  width: getHorizontalSize(
                                    403,
                                  ),
                                  margin: getMargin(
                                    top: 28,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CarouselSlider.builder(
                                        options: CarouselOptions(
                                          height: getVerticalSize(
                                            150,
                                          ),
                                          initialPage: 0,
                                          autoPlay: true,
                                          viewportFraction: 1.0,
                                          enableInfiniteScroll: false,
                                          scrollDirection: Axis.horizontal,
                                          onPageChanged: (
                                            index,
                                            reason,
                                          ) {
                                            sliderIndex = index;
                                          },
                                        ),
                                        itemCount: 1,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          return Sliderrectangle3ItemWidget();
                                        },
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            8,
                                          ),
                                          margin: getMargin(
                                            bottom: 5,
                                          ),
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
                                              dotHeight: getVerticalSize(
                                                8,
                                              ),
                                              dotWidth: getHorizontalSize(
                                                8,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    height: getVerticalSize(42),
                                    width: getHorizontalSize(406),
                                    margin: getMargin(top: 17),
                                    child: TabBar(
                                        indicator: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          shape: BoxShape.rectangle,
                                          color: Colors.blue,
                                        ),
                                        isScrollable: true,
                                        dividerColor: Colors.black,
                                        controller: frame17Controller,
                                        labelColor: Colors.black,
                                        unselectedLabelColor: Colors.black,
                                        tabs: [
                                          Tab(
                                              child: Text("Recently Viewed",
                                                  overflow: TextOverflow.clip)),
                                          Tab(
                                              child: Text("Categories",
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                          Tab(
                                              child: Text("Top Offers",
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                          Tab(
                                              child: Text("New",
                                                  overflow:
                                                      TextOverflow.visible))
                                        ]))
                              ])),
                    )),
                Flexible(
                  fit: FlexFit.loose,
                  child: SizedBox(
                    height: getVerticalSize(
                      313,
                    ),
                    child: ListView.separated(
                      padding: getPadding(
                        left: 2,
                        top: 25,
                        right: 2,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: getHorizontalSize(
                            4,
                          ),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Listrectangle31ItemWidget();
                      },
                    ),
                  ),
                ),
                Padding(
                    padding: getPadding(top: 5),
                    child: Row(children: [
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("Hot Deals For You",
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
                          padding:
                              getPadding(left: 5, top: 7, right: 5, bottom: 7),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle3121120x188,
                                    height: getVerticalSize(121),
                                    width: getHorizontalSize(188)),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "3 BHK Flat",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "TZS2.58 Cr | 2575 sqft",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium16,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Sector 107, Noida",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Dec’ 27",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ])),
                      Container(
                          margin: getMargin(left: 1),
                          padding:
                              getPadding(left: 5, top: 7, right: 5, bottom: 7),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle31215,
                                    height: getVerticalSize(121),
                                    width: getHorizontalSize(188)),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "3 BHK Flat",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "TZS2.58 Cr | 2575 sqft",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium16,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Sector 107, Noida",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Dec’ 27",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ]))
                    ])),
                Padding(
                    padding: getPadding(top: 5),
                    child: Row(children: [
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("Featured Projects",
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
                          padding:
                              getPadding(left: 5, top: 7, right: 5, bottom: 7),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3048,
                                    height: getVerticalSize(121),
                                    width: getHorizontalSize(188)),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "3 BHK Flat",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "TZS2.58 Cr | 2575 sqft",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium16,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Sector 107, Noida",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Dec’ 27",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ])),
                      Container(
                          margin: getMargin(left: 1),
                          padding:
                              getPadding(left: 5, top: 7, right: 5, bottom: 7),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3049,
                                    height: getVerticalSize(121),
                                    width: getHorizontalSize(188)),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "3 BHK Flat",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "TZS2.58 Cr | 2575 sqft",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium16,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Sector 107, Noida",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Dec’ 27",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ]))
                    ])),
                CustomImageView(
                  svgPath: ImageConstant.imgMenuLime500,
                  height: getVerticalSize(
                    6,
                  ),
                  width: getHorizontalSize(
                    48,
                  ),
                  margin: getMargin(
                    top: 77,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
