import '../messages_one_page/widgets/messages_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/app_bar/appbar_button_1.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';

class MessagesOnePage extends StatelessWidget {
  const MessagesOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                title: AppbarButton1(
                    margin: getMargin(left: 12),
                    onTap: () {
                      onTapMessage(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(25),
                      width: getSize(25),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 12, top: 20, right: 17, bottom: 3)),
                  AppbarImage(
                      height: getSize(32),
                      width: getSize(32),
                      svgPath: ImageConstant.imgIconoiradduser,
                      margin: getMargin(left: 31, top: 17, right: 29))
                ],
                styleType: Style.bgFill),
            body: Padding(
                padding: getPadding(left: 12, top: 18, right: 11),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(25));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return MessagesOneItemWidget(onTapColumntype: () {
                        onTapColumntype(context);
                      });
                    }))));
  }

  /// Navigates to the chatScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the chatScreen.
  onTapColumntype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  /// Navigates to the servicesTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the servicesTabContainerScreen.
  onTapMessage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesTabContainerScreen);
  }
}
