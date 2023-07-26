import '../properties_page/widgets/list1_item_widget.dart';
import '../properties_page/widgets/listrectangle31_item_widget.dart';
import '../properties_page/widgets/sliderrectangle3_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    with AutomaticKeepAliveClientMixin<PropertiesPage> {
  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 18,
                        right: 4,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomSearchView(
                            controller: searchController,
                            hintText: "Search for Products",
                            hintStyle:
                                CustomTextStyles.bodyLargePrimaryContainer,
                            textStyle:
                                CustomTextStyles.bodyLargePrimaryContainer,
                            prefix: Container(
                              margin: getMargin(
                                left: 21,
                                top: 15,
                                right: 19,
                                bottom: 12,
                              ),
                              child: CustomImageView(
                                svgPath:
                                    ImageConstant.imgSearchPrimarycontainer,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                51,
                              ),
                            ),
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 13,
                                right: 21,
                                bottom: 13,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgFrame7,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                51,
                              ),
                            ),
                            contentPadding: getPadding(
                              top: 13,
                              bottom: 13,
                            ),
                            defaultBorderDecoration:
                                SearchViewStyleHelper.custom,
                            enabledBorderDecoration:
                                SearchViewStyleHelper.custom,
                            focusedBorderDecoration:
                                SearchViewStyleHelper.custom,
                            disabledBorderDecoration:
                                SearchViewStyleHelper.custom,
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
                                  itemBuilder: (context, index, realIndex) {
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
                                        dotColor: theme.colorScheme.primary,
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
                          Expanded(
                            child: SizedBox(
                              height: getVerticalSize(
                                313,
                              ),
                              child: ListView.separated(
                                padding: getPadding(
                                  left: 2,
                                  top: 77,
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
                            padding: getPadding(
                              left: 2,
                              top: 17,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Hot Deals For You",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Spacer(),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "See All",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLargeBlue700,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: getSize(
                                    21,
                                  ),
                                  width: getSize(
                                    21,
                                  ),
                                  margin: getMargin(
                                    left: 6,
                                    top: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(
                              139,
                            ),
                            child: ListView.separated(
                              padding: getPadding(
                                left: 2,
                                top: 14,
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
                                return List1ItemWidget();
                              },
                            ),
                          ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
