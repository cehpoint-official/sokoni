import 'package:riverpod/riverpod.dart';
import 'package:sakuni/presentation/categories_one_screen/categories_one_screen.dart';
import 'package:sakuni/presentation/categories_screen/categories_screen.dart';
import 'package:sakuni/presentation/messages_screen/messages_screen.dart';
import 'package:sakuni/presentation/properties_page/properties_page.dart';
import 'package:sakuni/presentation/search_one_screen/search_one_screen.dart';
import 'package:sakuni/presentation/services_page/services_page.dart';
import 'package:sakuni/presentation/three_bar_screen/three_bar_screen.dart';

import '../home_tab_container_screen/widgets/sliderrectangle2_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/presentation/home_page/home_page.dart';
import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';
import 'package:sakuni/widgets/custom_bottom_bar.dart';
import 'package:sakuni/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Color appbarColor = Colors.blue.shade900;
Color bgColor = Colors.blue.shade800;

class HomeTabContainerScreen extends StatefulWidget {
  const HomeTabContainerScreen({Key? key}) : super(key: key);

  @override
  HomeTabContainerScreenState createState() => HomeTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class HomeTabContainerScreenState extends State<HomeTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  late TabController tabviewController;
  late TabController maintabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
    maintabviewController = TabController(length: 3, vsync: this);
  }

  TabBar get _tabBar => TabBar(
      indicatorColor: Colors.yellow,
      labelColor: Colors.black,
      tabs: [
        Tab(
          text: 'Products',
        ),
        Tab(
          text: 'Properties',
        ),
        Tab(
          text: 'Services',
        )
      ],
      controller: maintabviewController);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: bgColor,
          centerTitle: true,
          title: Text('Sokoni'),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: appbarColor,
              child: _tabBar,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: getMargin(left: 10, right: 4),
                        decoration: AppDecoration.fill1,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(7),
                                width: getHorizontalSize(88),
                                margin: getMargin(left: 1),
                                decoration: BoxDecoration(
                                  color: appTheme.lime500,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(3),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SearchOneScreen(),
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
                              Padding(
                                  padding: getPadding(left: 1, top: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            height: getVerticalSize(83),
                                            width: getHorizontalSize(76),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  81),
                                                          width:
                                                              getHorizontalSize(
                                                                  76),
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .lime50,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  70),
                                                          width:
                                                              getHorizontalSize(
                                                                  58),
                                                          margin: getMargin(
                                                              left: 2),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage3,
                                                                    height:
                                                                        getVerticalSize(
                                                                            70),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            57),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage4,
                                                                    height:
                                                                        getSize(
                                                                            31),
                                                                    width:
                                                                        getSize(
                                                                            31),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            13))
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 6),
                                                          child: Text(
                                                              "Electronics",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)))
                                                ])),
                                        Container(
                                            margin: getMargin(top: 2),
                                            padding: getPadding(
                                                left: 10,
                                                top: 5,
                                                right: 10,
                                                bottom: 5),
                                            decoration: AppDecoration.fill8
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage5,
                                                      height: getSize(50),
                                                      width: getSize(50)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text("Mobiles",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)))
                                                ])),
                                        Container(
                                            margin: getMargin(top: 2),
                                            padding:
                                                getPadding(left: 10, right: 10),
                                            decoration: AppDecoration.fill8
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage6,
                                                      height:
                                                          getVerticalSize(56),
                                                      width: getHorizontalSize(
                                                          55)),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 4, bottom: 7),
                                                      child: Text("Fashion",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodySmall))
                                                ])),
                                        Container(
                                            height: getSize(81),
                                            width: getSize(81),
                                            margin: getMargin(top: 2),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 5,
                                                              right: 19,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fill8
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  top: 56),
                                                              child: Text(
                                                                  "grocery",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage7,
                                                      height:
                                                          getVerticalSize(56),
                                                      width:
                                                          getHorizontalSize(75),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: getMargin(top: 3))
                                                ])),
                                        Container(
                                            margin: getMargin(top: 2),
                                            padding:
                                                getPadding(left: 3, right: 3),
                                            decoration: AppDecoration.fill8
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      height: getSize(65),
                                                      width: getSize(65),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage8,
                                                                height:
                                                                    getSize(56),
                                                                width:
                                                                    getSize(56),
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage9,
                                                                height:
                                                                    getSize(37),
                                                                width:
                                                                    getSize(37),
                                                                alignment: Alignment
                                                                    .bottomRight)
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 6),
                                                          child: Text("Home",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)))
                                                ]))
                                      ])),
                              Container(
                                  height: getVerticalSize(150),
                                  width: getHorizontalSize(403),
                                  margin: getMargin(left: 1, top: 17),
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
                                                onPageChanged: (index, reason) {
                                                  sliderIndex = index;
                                                }),
                                            itemCount: 1,
                                            itemBuilder:
                                                (context, index, realIndex) {
                                              return Sliderrectangle2ItemWidget();
                                            }),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(8),
                                                margin: getMargin(bottom: 5),
                                                child: AnimatedSmoothIndicator(
                                                    activeIndex: sliderIndex,
                                                    count: 1,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    effect: ScrollingDotsEffect(
                                                        activeDotColor: Color(
                                                            0X1212121D)))))
                                      ])),
                              Container(
                                  height: getVerticalSize(42),
                                  width: getHorizontalSize(406),
                                  margin: getMargin(top: 17),
                                  child: TabBar(
                                      controller: tabviewController,
                                      labelColor: theme.colorScheme.primary,
                                      unselectedLabelColor: appTheme.gray400,
                                      tabs: [
                                        Tab(
                                            child: Text("Recently Viewed",
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                        InkWell(
                                          onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CategoriesOneScreen(),
                                              )),
                                          child: Tab(
                                              child: Text("Categories",
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                        ),
                                        Tab(
                                            child: Text("Top Offers",
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                        Tab(
                                            child: Text("New",
                                                overflow:
                                                    TextOverflow.ellipsis))
                                      ]))
                            ])),
                    SizedBox(
                        height: getVerticalSize(345),
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              HomePage(),
                              HomePage(),
                              HomePage(),
                              HomePage()
                            ]))
                  ],
                ),
              ),
            ),
            PropertiesPage(),
            ServicesPage(),
          ],
          controller: maintabviewController,
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Solaruserbrokendefault:
        return AppRoutes.messagesOnePage;
      case BottomBarEnum.Iconsaxlinearmessage:
        return AppRoutes.messagesScreen;
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Save:
        return "/";
      case BottomBarEnum.Basilmenuoutlinedefault:
        return AppRoutes.threeBarScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesScreen:
        return MessagesScreen();
      case AppRoutes.messagesScreen:
        return MessagesScreen();
      case AppRoutes.threeBarScreen:
        return ThreeBarScreen();
      default:
        return DefaultWidget();
    }
  }
}
