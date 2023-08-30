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
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              width: getHorizontalSize(10));
                                        },
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return ListmobilesItemWidget(
                                              onTapImgImagethirteen: () {
                                            onTapImgImagethirteen(context);
                                          });
                                        })),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Text("Top Rated",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                SizedBox(
                                    height: getVerticalSize(143),
                                    child: ListView.separated(
                                        padding: getPadding(top: 11),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              width: getHorizontalSize(10));
                                        },
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return Listmobiles1ItemWidget();
                                        })),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenuLime500,
                                    height: getVerticalSize(6),
                                    width: getHorizontalSize(47),
                                    margin: getMargin(top: 78))
                              ]))
                    ])))));
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
