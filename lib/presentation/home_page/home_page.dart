import 'package:sakuni/presentation/product_details_two_tab_container_screen/product_details_two_tab_container_screen.dart';

import '../home_page/widgets/listmobiles1_item_widget.dart';
import '../home_page/widgets/listmobiles_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(left: 11, top: 29, right: 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(130),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailsTwoTabContainerScreen(),
                                        ));
                                  },
                                  child: Container(
                                    padding: getPadding(
                                      left: 5,
                                      right: 5,
                                    ),
                                    decoration: AppDecoration.fill3.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    width: getHorizontalSize(
                                      120,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage48,
                                          height: getSize(
                                            109,
                                          ),
                                          width: getSize(
                                            109,
                                          ),
                                          onTap: () {
                                            // onTapImgImagethirteen?.call();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductDetailsTwoTabContainerScreen(),
                                                ));
                                          },
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "Mobiles",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 5,
                                    right: 5,
                                  ),
                                  decoration: AppDecoration.fill3.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  width: getHorizontalSize(
                                    120,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage16,
                                        height: getSize(
                                          109,
                                        ),
                                        width: getSize(
                                          109,
                                        ),
                                        onTap: () {
                                          // onTapImgImagethirteen?.call();
                                        },
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 28,
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          "Smart Watches",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 5,
                                    right: 5,
                                  ),
                                  decoration: AppDecoration.fill3.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  width: getHorizontalSize(
                                    120,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage19,
                                        height: getSize(
                                          109,
                                        ),
                                        width: getSize(
                                          109,
                                        ),
                                        onTap: () {
                                          // onTapImgImagethirteen?.call();
                                        },
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 28,
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          "Headphones",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 5,
                                    right: 5,
                                  ),
                                  decoration: AppDecoration.fill3.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  width: getHorizontalSize(
                                    120,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage18,
                                        height: getSize(
                                          109,
                                        ),
                                        width: getSize(
                                          109,
                                        ),
                                        onTap: () {
                                          // onTapImgImagethirteen?.call();
                                        },
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 28,
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          "Laptops",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("Top Rated",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(
                        height: getVerticalSize(143),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 5,
                                  right: 5,
                                ),
                                decoration: AppDecoration.fill3.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                width: getHorizontalSize(
                                  120,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage48,
                                      height: getSize(
                                        109,
                                      ),
                                      width: getSize(
                                        109,
                                      ),
                                      onTap: () {
                                        // onTapImgImagethirteen?.call();
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 28,
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "Mobiles",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: getPadding(
                                  left: 5,
                                  right: 5,
                                ),
                                decoration: AppDecoration.fill3.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                width: getHorizontalSize(
                                  120,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage23,
                                      height: getSize(
                                        109,
                                      ),
                                      width: getSize(
                                        109,
                                      ),
                                      onTap: () {
                                        // onTapImgImagethirteen?.call();
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 28,
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "Smart Watches",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: getPadding(
                                  left: 5,
                                  right: 5,
                                ),
                                decoration: AppDecoration.fill3.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                width: getHorizontalSize(
                                  120,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage49,
                                      height: getSize(
                                        109,
                                      ),
                                      width: getSize(
                                        109,
                                      ),
                                      onTap: () {
                                        // onTapImgImagethirteen?.call();
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 28,
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "Headphones",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: getPadding(
                                  left: 5,
                                  right: 5,
                                ),
                                decoration: AppDecoration.fill3.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                width: getHorizontalSize(
                                  120,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage18,
                                      height: getSize(
                                        109,
                                      ),
                                      width: getSize(
                                        109,
                                      ),
                                      onTap: () {
                                        // onTapImgImagethirteen?.call();
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 28,
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "Laptops",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                          svgPath: ImageConstant.imgMenuLime500,
                          height: getVerticalSize(6),
                          width: getHorizontalSize(47),
                          margin: getMargin(top: 78))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the productDetailsTwoTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the productDetailsTwoTabContainerScreen.
  onTapImgImagethirteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailsTwoTabContainerScreen);
  }
}
