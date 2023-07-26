import '../searches_screen/widgets/searches_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/appbar_title.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';

class SearchesScreen extends StatelessWidget {
  const SearchesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          height: getVerticalSize(
            61,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getVerticalSize(
              23,
            ),
            width: getHorizontalSize(
              22,
            ),
            svgPath: ImageConstant.imgSearchBlack9000123x22,
            margin: getMargin(
              left: 18,
              top: 26,
              bottom: 10,
            ),
          ),
          title: AppbarTitle(
            text: "Search for products",
            margin: getMargin(
              left: 12,
              top: 30,
              bottom: 2,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                29,
              ),
              width: getSize(
                29,
              ),
              svgPath: ImageConstant.imgIcbaselinemic,
              margin: getMargin(
                left: 18,
                top: 26,
                right: 4,
              ),
            ),
            AppbarImage(
              height: getSize(
                29,
              ),
              width: getSize(
                29,
              ),
              svgPath: ImageConstant.imgBasilcameraoutline,
              margin: getMargin(
                left: 10,
                top: 26,
                right: 22,
              ),
            ),
          ],
          styleType: Style.bgShadow,
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 6,
            bottom: 6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: getMargin(
                    right: 2,
                  ),
                  padding: getPadding(
                    left: 10,
                    top: 20,
                    right: 10,
                    bottom: 20,
                  ),
                  decoration: AppDecoration.fill1,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: getVerticalSize(
                          20,
                        ),
                      );
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return SearchesItemWidget();
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 12,
                    top: 21,
                  ),
                  child: Text(
                    "Trending Searches",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3141,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3143,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      margin: getMargin(
                        left: 9,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3139,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      margin: getMargin(
                        left: 9,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3142,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      margin: getMargin(
                        left: 9,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  202,
                ),
                width: getHorizontalSize(
                  397,
                ),
                margin: getMargin(
                  top: 7,
                ),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          top: 65,
                          bottom: 52,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle3140,
                                height: getVerticalSize(
                                  84,
                                ),
                                width: getHorizontalSize(
                                  93,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    3,
                                  ),
                                ),
                                margin: getMargin(
                                  right: 4,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle3144,
                                height: getVerticalSize(
                                  84,
                                ),
                                width: getHorizontalSize(
                                  93,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    3,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 4,
                                  right: 4,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle3145,
                                height: getVerticalSize(
                                  84,
                                ),
                                width: getHorizontalSize(
                                  93,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    3,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 4,
                                  right: 4,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle3146,
                                height: getVerticalSize(
                                  84,
                                ),
                                width: getHorizontalSize(
                                  93,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    3,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          right: 11,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: getHorizontalSize(
                                46,
                              ),
                              child: Text(
                                "Fan\nRepair",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLarge16,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 112,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: getHorizontalSize(
                                      46,
                                    ),
                                    child: Text(
                                      "Ac\nRepair",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodyLarge16,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      71,
                                    ),
                                    margin: getMargin(
                                      left: 42,
                                    ),
                                    child: Text(
                                      "Air Cooler\nRepair",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodyLarge16,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      71,
                                    ),
                                    margin: getMargin(
                                      left: 30,
                                    ),
                                    child: Text(
                                      "Air Cooler\nRepair",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodyLarge16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          right: 29,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: getHorizontalSize(
                                    42,
                                  ),
                                  child: Text(
                                    "Light\nSetup",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyLarge16,
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: getHorizontalSize(
                                    85,
                                  ),
                                  child: Text(
                                    "Refrigerator\nRepair",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyLarge16,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                    top: 13,
                                    bottom: 12,
                                  ),
                                  child: Text(
                                    "Wiring",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLarge16,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: getHorizontalSize(
                                50,
                              ),
                              margin: getMargin(
                                left: 2,
                                top: 113,
                              ),
                              child: Text(
                                "Laptop\nRepair",
                                maxLines: 2,
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
              Padding(
                padding: getPadding(
                  left: 18,
                  top: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3147,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3148,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      margin: getMargin(
                        left: 8,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3149,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      margin: getMargin(
                        left: 7,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3150,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      margin: getMargin(
                        left: 6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 37,
                  top: 7,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: getHorizontalSize(
                        46,
                      ),
                      child: Text(
                        "TV\nRepair",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge16,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: getHorizontalSize(
                        55,
                      ),
                      child: Text(
                        "Inverter\nRepair",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge16,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        78,
                      ),
                      margin: getMargin(
                        left: 34,
                      ),
                      child: Text(
                        "Microwave\nRepair",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge16,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        96,
                      ),
                      margin: getMargin(
                        left: 12,
                      ),
                      child: Text(
                        "Water purifier\nRepair",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
