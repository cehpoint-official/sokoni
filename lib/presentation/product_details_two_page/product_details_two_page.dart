import '../product_details_two_page/widgets/list_item_widget.dart';
import '../product_details_two_page/widgets/liststar_item_widget.dart';
import '../product_details_two_page/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';
import 'package:sakuni/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductDetailsTwoPage extends StatefulWidget {
  const ProductDetailsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProductDetailsTwoPageState createState() => ProductDetailsTwoPageState();
}

class ProductDetailsTwoPageState extends State<ProductDetailsTwoPage>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<ProductDetailsTwoPage> {
  int sliderIndex = 1;

  TextEditingController framethirtyseveController = TextEditingController();

  late TabController group61Controller;

  TextEditingController frametwentythreController = TextEditingController();

  TextEditingController frametwentythreController1 = TextEditingController();

  TextEditingController frametwentythreController2 = TextEditingController();

  TextEditingController frametwentythreController3 = TextEditingController();

  @override
  void initState() {
    super.initState();
    group61Controller = TabController(length: 2, vsync: this);
  }

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: getHorizontalSize(
                        133,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          3,
                        ),
                        thickness: getVerticalSize(
                          3,
                        ),
                        color: appTheme.blue700,
                        indent: getHorizontalSize(
                          12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          313,
                        ),
                        width: getHorizontalSize(
                          391,
                        ),
                        margin: getMargin(
                          top: 9,
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 42,
                              ),
                              child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: getSize(
                                    280,
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
                                  return SliderItemWidget();
                                },
                              ),
                            ),
                            CustomElevatedButton(
                              width: getHorizontalSize(
                                93,
                              ),
                              height: getVerticalSize(
                                33,
                              ),
                              text: "30% off",
                              buttonStyle: CustomButtonStyles.fillLightgreen50,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumLightgreen900,
                              alignment: Alignment.topLeft,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVideocamera,
                              height: getVerticalSize(
                                34,
                              ),
                              width: getHorizontalSize(
                                72,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  4,
                                ),
                              ),
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          8,
                        ),
                        margin: getMargin(
                          top: 2,
                        ),
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 5,
                          effect: ScrollingDotsEffect(
                            spacing: 6,
                            activeDotColor: appTheme.blue200,
                            dotColor: appTheme.gray400,
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
                    Padding(
                      padding: getPadding(
                        left: 14,
                        top: 6,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
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
                                return ListItemWidget();
                              },
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle108,
                            height: getSize(
                              70,
                            ),
                            width: getSize(
                              70,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                4,
                              ),
                            ),
                            margin: getMargin(
                              left: 13,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle111,
                            height: getSize(
                              70,
                            ),
                            width: getSize(
                              70,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                4,
                              ),
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              71,
                            ),
                            width: getHorizontalSize(
                              70,
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getSize(
                                      70,
                                    ),
                                    width: getSize(
                                      70,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.gray300,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          4,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: appTheme.gray300,
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage47,
                                  height: getSize(
                                    68,
                                  ),
                                  width: getSize(
                                    68,
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              70,
                            ),
                            width: getHorizontalSize(
                              87,
                            ),
                            margin: getMargin(
                              left: 6,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getSize(
                                      70,
                                    ),
                                    width: getSize(
                                      70,
                                    ),
                                    margin: getMargin(
                                      left: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.gray300,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          4,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: appTheme.gray300,
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage47,
                                  height: getSize(
                                    65,
                                  ),
                                  width: getSize(
                                    65,
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage46,
                                  height: getSize(
                                    65,
                                  ),
                                  width: getSize(
                                    65,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        28,
                      ),
                      width: getHorizontalSize(
                        252,
                      ),
                      margin: getMargin(
                        left: 21,
                        top: 14,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 21,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "8459.80",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeBlack90001SemiBold,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "-",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeBlack90001SemiBold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "8159.80",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleLargeBlack90001SemiBold,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgGroup63,
                            height: getVerticalSize(
                              20,
                            ),
                            width: getHorizontalSize(
                              170,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 27,
                        top: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Min.order: 2 pieces",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyMedium,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 41,
                            ),
                            child: Text(
                              "<100 pieces",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(
                          399,
                        ),
                        margin: getMargin(
                          left: 13,
                          top: 13,
                          right: 15,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedit\na qui ratione assumenda sunt consequatudoloremque debitis qu\nas neque eum explicabo unde, modi commodi officiis? Facere accusantium magni incidunt dolore nihil. ",
                                style: CustomTextStyles.bodyMedium14,
                              ),
                              TextSpan(
                                text: "See ",
                                style:
                                    CustomTextStyles.labelLargeBlue200.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: "More.\n",
                                style:
                                    CustomTextStyles.titleSmallRoboto.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 13,
                      ),
                      child: Text(
                        "0 Orders | See Store Reviews",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumBluegray40014,
                      ),
                    ),
                    CustomTextFormField(
                      width: getHorizontalSize(
                        147,
                      ),
                      controller: framethirtyseveController,
                      margin: getMargin(
                        left: 12,
                        top: 12,
                      ),
                      textStyle: CustomTextStyles.titleSmallRobotoMedium,
                      hintText: "(2K)",
                      hintStyle: CustomTextStyles.titleSmallRobotoMedium,
                      textInputAction: TextInputAction.next,
                      suffix: Container(
                        margin: getMargin(
                          right: 30,
                          bottom: 1,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgFrame47,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                        top: 21,
                      ),
                      child: Text(
                        "Highlights",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeBlack90001,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        97,
                      ),
                      width: getHorizontalSize(
                        427,
                      ),
                      margin: getMargin(
                        left: 1,
                        top: 10,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 14,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                    ),
                                    child: Text(
                                      "RAM | ROM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodyLargeBluegray400,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                    ),
                                    child: Text(
                                      "4GB RAM | 64 GB ROM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Processor",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodyLargeBluegray400,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "Media Tek Helio P35 | Octa Core | 2.3 GHz",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(
                              84,
                            ),
                            width: getHorizontalSize(
                              427,
                            ),
                            child: TabBar(
                              controller: group61Controller,
                              labelColor: appTheme.black90001,
                              labelStyle: TextStyle(),
                              unselectedLabelColor: appTheme.black90001,
                              unselectedLabelStyle: TextStyle(),
                              indicator: BoxDecoration(
                                color: theme.colorScheme.primary,
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "Chat Now",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Send inquiry",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 10,
                      ),
                      child: Text(
                        "Rear Camera",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeBluegray400,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 7,
                      ),
                      child: Text(
                        "13 MP + 2MP",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 11,
                      ),
                      child: Text(
                        "Font Camera",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeBluegray400,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 17,
                        top: 8,
                      ),
                      child: Text(
                        "5 MP",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 12,
                      ),
                      child: Text(
                        "Display",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeBluegray400,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 17,
                        top: 6,
                      ),
                      child: Text(
                        "6.5 inch",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 13,
                      ),
                      child: Text(
                        "Battery",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeBluegray400,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 6,
                      ),
                      child: Text(
                        "5000 MAh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                        top: 23,
                      ),
                      child: Text(
                        "Other Details",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargePrimaryContainer,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 18,
                        top: 15,
                        right: 43,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Network Type",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "4G",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 18,
                          top: 16,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "SIM Type",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyLargeBluegray400,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "Dual Sim",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleMedium16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 16,
                        right: 46,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Expandable Storage",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "No",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 16,
                        right: 47,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Audio Jack",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodyLargeBluegray400,
                          ),
                          Text(
                            "No",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMedium16,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 17,
                        right: 47,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Quick Charging",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyLargeBluegray400,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "No",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 15,
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 22,
                                bottom: 25,
                              ),
                              child: Text(
                                "In The Box",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyLargeBluegray400,
                              ),
                            ),
                            SizedBox(
                              width: getHorizontalSize(
                                153,
                              ),
                              child: Text(
                                "USB Cable, Adaptor,\ncable,  Mobile Phone, Ejection Pin, Manual.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleMedium16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 17,
                      ),
                      padding: getPadding(
                        left: 8,
                        top: 15,
                        right: 8,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.fill7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 8,
                              top: 1,
                              bottom: 1,
                            ),
                            child: Text(
                              "All Details",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowrightBlack90001,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              top: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 20,
                      ),
                      child: Text(
                        "Purchase Details",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargePrimaryContainer,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 21,
                          top: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLashippingfast,
                              height: getSize(
                                25,
                              ),
                              width: getSize(
                                25,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                top: 2,
                              ),
                              child: Text(
                                "Shipping",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightBlack90001,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 61,
                        top: 3,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Contact supplier",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodySmall!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 2,
                            ),
                            child: Text(
                              "to negotiate shipping .",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgFluentpayment24regular,
                              height: getSize(
                                29,
                              ),
                              width: getSize(
                                29,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 13,
                                top: 4,
                                bottom: 1,
                              ),
                              child: Text(
                                "Payment",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightBlack90001,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                              margin: getMargin(
                                top: 2,
                                bottom: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 61,
                        top: 2,
                      ),
                      child: Text(
                        "Enjoy encrypted and secure payments.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 21,
                          top: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgIconparkoutlinereturn,
                              height: getVerticalSize(
                                27,
                              ),
                              width: getHorizontalSize(
                                26,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                top: 1,
                                bottom: 2,
                              ),
                              child: Text(
                                "Returns & Refunds",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowrightBlack90001,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                              margin: getMargin(
                                top: 1,
                                bottom: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 62,
                        top: 2,
                      ),
                      child: Text(
                        "Eligible for returns & refunds.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 15,
                          top: 36,
                          right: 17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ratings & Reviews",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyLargePrimaryContainer,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 5,
                              ),
                              child: Text(
                                "View Reviews",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlueA400,
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
                          left: 39,
                          top: 13,
                          right: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 25,
                                bottom: 31,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 38,
                                    ),
                                    child: Text(
                                      "Good",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleMediumLightgreen900,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgFrame47,
                                    height: getVerticalSize(
                                      23,
                                    ),
                                    width: getHorizontalSize(
                                      129,
                                    ),
                                    margin: getMargin(
                                      top: 11,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "2k ratings and 200 reviews",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmallGray400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 36,
                              ),
                              child: SizedBox(
                                height: getVerticalSize(
                                  138,
                                ),
                                child: VerticalDivider(
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: appTheme.black90001.withOpacity(0.11),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: getPadding(
                                  left: 9,
                                  top: 18,
                                  bottom: 27,
                                ),
                                child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        2,
                                      ),
                                    );
                                  },
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return ListstarItemWidget();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          656,
                        ),
                        width: getHorizontalSize(
                          404,
                        ),
                        margin: getMargin(
                          top: 16,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 11,
                                  top: 51,
                                  right: 6,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        139,
                                      ),
                                      width: getHorizontalSize(
                                        181,
                                      ),
                                      margin: getMargin(
                                        right: 3,
                                      ),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray300,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 169,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              139,
                                            ),
                                            width: getHorizontalSize(
                                              181,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.gray300,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  8,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              139,
                                            ),
                                            width: getHorizontalSize(
                                              181,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.gray300,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  8,
                                                ),
                                              ),
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
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                    ),
                                    child: Text(
                                      "View Similar Products",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodyLargePrimaryContainer,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 21,
                                      right: 4,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: getPadding(
                                            left: 2,
                                            top: 5,
                                            right: 2,
                                            bottom: 5,
                                          ),
                                          decoration:
                                              AppDecoration.outline7.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: getVerticalSize(
                                                  140,
                                                ),
                                                width: getHorizontalSize(
                                                  181,
                                                ),
                                                margin: getMargin(
                                                  left: 5,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        height: getVerticalSize(
                                                          139,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          181,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              appTheme.gray300,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              8,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage48,
                                                      height: getSize(
                                                        140,
                                                      ),
                                                      width: getSize(
                                                        140,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  182,
                                                ),
                                                margin: getMargin(
                                                  left: 4,
                                                  top: 16,
                                                ),
                                                child: Text(
                                                  "Lorem ipsum dolor sit am\net consectetur adipisicin..",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodyLarge16,
                                                ),
                                              ),
                                              CustomTextFormField(
                                                width: getHorizontalSize(
                                                  168,
                                                ),
                                                controller:
                                                    frametwentythreController,
                                                margin: getMargin(
                                                  top: 6,
                                                ),
                                                textStyle: theme
                                                    .textTheme.titleMedium!,
                                                hintText: "20,000 -    24,000",
                                                hintStyle: theme
                                                    .textTheme.titleMedium!,
                                                textInputAction:
                                                    TextInputAction.next,
                                                prefix: Container(
                                                  margin: getMargin(
                                                    top: 1,
                                                    bottom: 2,
                                                  ),
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMdicurrencyinr,
                                                  ),
                                                ),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                  maxHeight: getVerticalSize(
                                                    23,
                                                  ),
                                                ),
                                                suffix: Container(
                                                  margin: getMargin(
                                                    top: 1,
                                                    right: 30,
                                                    bottom: 2,
                                                  ),
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMdicurrencyinr,
                                                  ),
                                                ),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                  maxHeight: getVerticalSize(
                                                    23,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(
                                                  16,
                                                ),
                                                width: getHorizontalSize(
                                                  152,
                                                ),
                                                margin: getMargin(
                                                  left: 4,
                                                  top: 5,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Shipping per piece:    1000",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .bodyMedium,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector,
                                                      height: getVerticalSize(
                                                        10,
                                                      ),
                                                      width: getHorizontalSize(
                                                        7,
                                                      ),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: getMargin(
                                                        top: 2,
                                                        right: 31,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 4,
                                                  top: 3,
                                                ),
                                                child: Text(
                                                  "Min. order: 10 piece",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 4,
                                                  top: 4,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        bottom: 1,
                                                      ),
                                                      child: Text(
                                                        "20 orders",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallPrimaryContainer,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 90,
                                                        top: 1,
                                                      ),
                                                      child: Text(
                                                        "1yrs . CN",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallGray600,
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
                                            303,
                                          ),
                                          width: getHorizontalSize(
                                            195,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  padding: getPadding(
                                                    left: 2,
                                                    top: 5,
                                                    right: 2,
                                                    bottom: 5,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outline7
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          182,
                                                        ),
                                                        margin: getMargin(
                                                          left: 4,
                                                          top: 156,
                                                        ),
                                                        child: Text(
                                                          "Lorem ipsum dolor sit am\net consectetur adipisicin..",
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              CustomTextStyles
                                                                  .bodyLarge16,
                                                        ),
                                                      ),
                                                      CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                          168,
                                                        ),
                                                        controller:
                                                            frametwentythreController1,
                                                        margin: getMargin(
                                                          top: 6,
                                                        ),
                                                        textStyle: theme
                                                            .textTheme
                                                            .titleMedium!,
                                                        hintText:
                                                            "20,000 -    24,000",
                                                        hintStyle: theme
                                                            .textTheme
                                                            .titleMedium!,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next,
                                                        prefix: Container(
                                                          margin: getMargin(
                                                            top: 1,
                                                            bottom: 2,
                                                          ),
                                                          child:
                                                              CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgMdicurrencyinr,
                                                          ),
                                                        ),
                                                        prefixConstraints:
                                                            BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                            23,
                                                          ),
                                                        ),
                                                        suffix: Container(
                                                          margin: getMargin(
                                                            top: 1,
                                                            right: 30,
                                                            bottom: 2,
                                                          ),
                                                          child:
                                                              CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgMdicurrencyinr,
                                                          ),
                                                        ),
                                                        suffixConstraints:
                                                            BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                            23,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getVerticalSize(
                                                          16,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          152,
                                                        ),
                                                        margin: getMargin(
                                                          left: 4,
                                                          top: 5,
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                "Shipping per piece:    1000",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height:
                                                                  getVerticalSize(
                                                                10,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                7,
                                                              ),
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              margin: getMargin(
                                                                top: 2,
                                                                right: 31,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 4,
                                                          top: 3,
                                                        ),
                                                        child: Text(
                                                          "Min. order: 10 piece",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          181,
                                                        ),
                                                        margin: getMargin(
                                                          left: 4,
                                                          top: 4,
                                                          right: 4,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                bottom: 1,
                                                              ),
                                                              child: Text(
                                                                "20 orders",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmallPrimaryContainer,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 1,
                                                              ),
                                                              child: Text(
                                                                "1yrs . CN",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmallGray600,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage49,
                                                height: getSize(
                                                  152,
                                                ),
                                                width: getSize(
                                                  152,
                                                ),
                                                alignment: Alignment.topCenter,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                      top: 6,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: getMargin(
                                              right: 5,
                                            ),
                                            padding: getPadding(
                                              left: 2,
                                              top: 3,
                                              right: 2,
                                              bottom: 3,
                                            ),
                                            decoration:
                                                AppDecoration.outline7.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder6,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage31,
                                                  height: getVerticalSize(
                                                    148,
                                                  ),
                                                  width: getHorizontalSize(
                                                    147,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      8,
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    182,
                                                  ),
                                                  margin: getMargin(
                                                    left: 4,
                                                    top: 11,
                                                  ),
                                                  child: Text(
                                                    "Lorem ipsum dolor sit am\net consectetur adipisicin..",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16,
                                                  ),
                                                ),
                                                CustomTextFormField(
                                                  width: getHorizontalSize(
                                                    168,
                                                  ),
                                                  controller:
                                                      frametwentythreController2,
                                                  margin: getMargin(
                                                    top: 6,
                                                  ),
                                                  textStyle: theme
                                                      .textTheme.titleMedium!,
                                                  hintText:
                                                      "20,000 -    24,000",
                                                  hintStyle: theme
                                                      .textTheme.titleMedium!,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  prefix: Container(
                                                    margin: getMargin(
                                                      top: 1,
                                                      bottom: 2,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMdicurrencyinr,
                                                    ),
                                                  ),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                    maxHeight: getVerticalSize(
                                                      23,
                                                    ),
                                                  ),
                                                  suffix: Container(
                                                    margin: getMargin(
                                                      top: 1,
                                                      right: 30,
                                                      bottom: 2,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMdicurrencyinr,
                                                    ),
                                                  ),
                                                  suffixConstraints:
                                                      BoxConstraints(
                                                    maxHeight: getVerticalSize(
                                                      23,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(
                                                    16,
                                                  ),
                                                  width: getHorizontalSize(
                                                    152,
                                                  ),
                                                  margin: getMargin(
                                                    left: 4,
                                                    top: 5,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Shipping per piece:    1000",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVector,
                                                        height: getVerticalSize(
                                                          10,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          7,
                                                        ),
                                                        alignment:
                                                            Alignment.topRight,
                                                        margin: getMargin(
                                                          top: 2,
                                                          right: 31,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 4,
                                                    top: 3,
                                                  ),
                                                  child: Text(
                                                    "Min. order: 10 piece",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 4,
                                                    top: 4,
                                                    bottom: 2,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          bottom: 1,
                                                        ),
                                                        child: Text(
                                                          "20 orders",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallPrimaryContainer,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 90,
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "1yrs . CN",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: getMargin(
                                              left: 5,
                                            ),
                                            padding: getPadding(
                                              left: 2,
                                              top: 5,
                                              right: 2,
                                              bottom: 5,
                                            ),
                                            decoration:
                                                AppDecoration.outline7.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder6,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage23,
                                                  height: getSize(
                                                    131,
                                                  ),
                                                  width: getSize(
                                                    131,
                                                  ),
                                                  alignment: Alignment.center,
                                                  margin: getMargin(
                                                    top: 4,
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    182,
                                                  ),
                                                  margin: getMargin(
                                                    left: 4,
                                                    top: 21,
                                                  ),
                                                  child: Text(
                                                    "Lorem ipsum dolor sit am\net consectetur adipisicin..",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16,
                                                  ),
                                                ),
                                                CustomTextFormField(
                                                  width: getHorizontalSize(
                                                    168,
                                                  ),
                                                  controller:
                                                      frametwentythreController3,
                                                  margin: getMargin(
                                                    top: 6,
                                                  ),
                                                  textStyle: theme
                                                      .textTheme.titleMedium!,
                                                  hintText:
                                                      "20,000 -    24,000",
                                                  hintStyle: theme
                                                      .textTheme.titleMedium!,
                                                  prefix: Container(
                                                    margin: getMargin(
                                                      top: 1,
                                                      bottom: 2,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMdicurrencyinr,
                                                    ),
                                                  ),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                    maxHeight: getVerticalSize(
                                                      23,
                                                    ),
                                                  ),
                                                  suffix: Container(
                                                    margin: getMargin(
                                                      top: 1,
                                                      right: 30,
                                                      bottom: 2,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMdicurrencyinr,
                                                    ),
                                                  ),
                                                  suffixConstraints:
                                                      BoxConstraints(
                                                    maxHeight: getVerticalSize(
                                                      23,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(
                                                    16,
                                                  ),
                                                  width: getHorizontalSize(
                                                    152,
                                                  ),
                                                  margin: getMargin(
                                                    left: 4,
                                                    top: 5,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Shipping per piece:    1000",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVector,
                                                        height: getVerticalSize(
                                                          10,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          7,
                                                        ),
                                                        alignment:
                                                            Alignment.topRight,
                                                        margin: getMargin(
                                                          top: 2,
                                                          right: 31,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 4,
                                                    top: 3,
                                                  ),
                                                  child: Text(
                                                    "Min. order: 10 piece",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 4,
                                                    top: 4,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          bottom: 1,
                                                        ),
                                                        child: Text(
                                                          "20 orders",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallPrimaryContainer,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 90,
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "1yrs . CN",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
