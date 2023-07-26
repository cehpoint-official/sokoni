import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';
import 'package:sakuni/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class OrdersTwoPage extends StatefulWidget {
  const OrdersTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrdersTwoPageState createState() => OrdersTwoPageState();
}

class OrdersTwoPageState extends State<OrdersTwoPage>
    with AutomaticKeepAliveClientMixin<OrdersTwoPage> {
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
                Container(
                  height: getVerticalSize(
                    611,
                  ),
                  width: getHorizontalSize(
                    402,
                  ),
                  margin: getMargin(
                    left: 10,
                    top: 19,
                    right: 15,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: getMargin(
                            left: 8,
                            right: 3,
                          ),
                          padding: getPadding(
                            left: 3,
                            top: 42,
                            right: 3,
                            bottom: 42,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder35,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: getSize(
                                  383,
                                ),
                                width: getSize(
                                  383,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "Nothing Yet!",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.headlineMedium,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgNodatacuate1,
                                      height: getSize(
                                        383,
                                      ),
                                      width: getSize(
                                        383,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  62,
                                ),
                                width: getHorizontalSize(
                                  170,
                                ),
                                margin: getMargin(
                                  top: 34,
                                  bottom: 10,
                                ),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: getVerticalSize(
                                          33,
                                        ),
                                        width: getHorizontalSize(
                                          152,
                                        ),
                                        decoration: BoxDecoration(
                                          color: appTheme.blue50059,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              76,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      width: getHorizontalSize(
                                        170,
                                      ),
                                      height: getVerticalSize(
                                        55,
                                      ),
                                      text: "Go Shop",
                                      buttonStyle:
                                          CustomButtonStyles.fillBlueA40001,
                                      buttonTextStyle: CustomTextStyles
                                          .titleMediumDMSansPrimary,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: CustomSearchView(
                                controller: searchController,
                                hintText: "Search for Products",
                                hintStyle: CustomTextStyles.bodyLargeIndigo600,
                                textStyle: CustomTextStyles.bodyLargeIndigo600,
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
                      ),
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
