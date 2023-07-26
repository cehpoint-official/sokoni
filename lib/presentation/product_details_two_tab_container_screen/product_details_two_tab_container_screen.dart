import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/presentation/product_details_two_page/product_details_two_page.dart';

class ProductDetailsTwoTabContainerScreen extends StatefulWidget {
  const ProductDetailsTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductDetailsTwoTabContainerScreenState createState() =>
      ProductDetailsTwoTabContainerScreenState();
}

class ProductDetailsTwoTabContainerScreenState
    extends State<ProductDetailsTwoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: getPadding(
                    left: 14,
                    top: 4,
                    right: 14,
                    bottom: 4,
                  ),
                  decoration: AppDecoration.fill5,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgGroup2055,
                    height: getVerticalSize(
                      38,
                    ),
                    width: getHorizontalSize(
                      399,
                    ),
                    margin: getMargin(
                      top: 5,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    69,
                  ),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black90001.withOpacity(0.25),
                        spreadRadius: getHorizontalSize(
                          2,
                        ),
                        blurRadius: getHorizontalSize(
                          2,
                        ),
                        offset: Offset(
                          0,
                          1,
                        ),
                      ),
                    ],
                  ),
                  child: TabBar(
                    controller: tabviewController,
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgQrcode,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                              margin: getMargin(
                                top: 3,
                                bottom: 2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                              ),
                              child: Text(
                                "Overview",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMenuBlack90001,
                              height: getVerticalSize(
                                16,
                              ),
                              width: getHorizontalSize(
                                20,
                              ),
                              margin: getMargin(
                                top: 3,
                                bottom: 2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                              ),
                              child: Text(
                                "Details",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgSettingsBlack90001,
                              height: getVerticalSize(
                                14,
                              ),
                              width: getHorizontalSize(
                                20,
                              ),
                              margin: getMargin(
                                top: 3,
                                bottom: 4,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                              ),
                              child: Text(
                                "Similar ",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    2581,
                  ),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ProductDetailsTwoPage(),
                      ProductDetailsTwoPage(),
                      ProductDetailsTwoPage(),
                    ],
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
