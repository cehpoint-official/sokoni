import '../orders_one_page/widgets/orders_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';
import 'package:sakuni/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class OrdersOnePage extends StatefulWidget {
  const OrdersOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  OrdersOnePageState createState() => OrdersOnePageState();
}

class OrdersOnePageState extends State<OrdersOnePage>
    with AutomaticKeepAliveClientMixin<OrdersOnePage> {
  TextEditingController searchController = TextEditingController();

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
                        left: 10,
                        top: 19,
                        right: 13,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Search for Products",
                                  hintStyle:
                                      CustomTextStyles.bodyLargeIndigo600,
                                  textStyle:
                                      CustomTextStyles.bodyLargeIndigo600,
                                  prefix: Container(
                                    margin: getMargin(
                                      left: 9,
                                      top: 17,
                                      right: 19,
                                      bottom: 9,
                                    ),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgSearchIndigo600,
                                    ),
                                  ),
                                  prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(
                                      51,
                                    ),
                                  ),
                                  suffix: Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        searchController.clear();
                                      },
                                      icon: Icon(
                                        Icons.clear,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: appTheme.indigo5001,
                                  contentPadding: getPadding(
                                    top: 14,
                                    right: 30,
                                    bottom: 14,
                                  ),
                                ),
                              ),
                              CustomOutlinedButton(
                                width: getHorizontalSize(
                                  87,
                                ),
                                height: getVerticalSize(
                                  51,
                                ),
                                text: "Filter",
                                margin: getMargin(
                                  left: 13,
                                ),
                                leftIcon: Container(
                                  margin: getMargin(
                                    right: 3,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgIonfilteroutline,
                                  ),
                                ),
                                buttonStyle:
                                    CustomButtonStyles.outlineBluegray300,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeIndigo600,
                              ),
                            ],
                          ),
                          Container(
                            margin: getMargin(
                              left: 2,
                              top: 22,
                            ),
                            padding: getPadding(
                              top: 10,
                              bottom: 10,
                            ),
                            decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage53113x113,
                                  height: getSize(
                                    113,
                                  ),
                                  width: getSize(
                                    113,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  margin: getMargin(
                                    bottom: 3,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 19,
                                    bottom: 27,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: getHorizontalSize(
                                              212,
                                            ),
                                            margin: getMargin(
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "Your order will be delivered on July 25th",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  CustomTextStyles.bodyLarge16,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlack9000116x7,
                                            height: getVerticalSize(
                                              16,
                                            ),
                                            width: getHorizontalSize(
                                              7,
                                            ),
                                            margin: getMargin(
                                              left: 36,
                                              top: 31,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "The quick brown fox jumps over the ...",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodyMediumBluegray400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 2,
                                top: 14,
                              ),
                              child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                  );
                                },
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return OrdersOneItemWidget();
                                },
                              ),
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
