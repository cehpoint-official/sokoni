import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';
import 'package:sakuni/widgets/custom_bottom_bar.dart';
import 'package:sakuni/widgets/custom_icon_button.dart';

class ProfileOneScreen extends StatelessWidget {
  ProfileOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          height: getVerticalSize(
            36,
          ),
          leadingWidth: 55,
          leading: AppbarImage(
            height: getVerticalSize(
              30,
            ),
            width: getHorizontalSize(
              37,
            ),
            imagePath: ImageConstant.imgImage54,
            margin: getMargin(
              left: 18,
              bottom: 6,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                26,
              ),
              width: getHorizontalSize(
                85,
              ),
              svgPath: ImageConstant.imgUser,
              margin: getMargin(
                left: 22,
                right: 22,
                bottom: 10,
              ),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 12,
            top: 26,
            right: 12,
            bottom: 26,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(
                  left: 1,
                ),
                padding: getPadding(
                  left: 8,
                  top: 17,
                  right: 8,
                  bottom: 17,
                ),
                decoration: AppDecoration.outline.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: getSize(
                        100,
                      ),
                      width: getSize(
                        100,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse71,
                            height: getSize(
                              100,
                            ),
                            width: getSize(
                              100,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                50,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomIconButton(
                            height: 25,
                            width: 25,
                            margin: getMargin(
                              top: 8,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration: IconButtonStyleHelper.fillIndigo400,
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCamera,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 26,
                        top: 11,
                        bottom: 13,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Prathik!",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.headlineLarge,
                          ),
                          Text(
                            "+27 9034566774",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleLargeKanitGray700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 39,
                ),
                child: Text(
                  "Primary Information",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 6,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgGridiconsphone,
                      height: getSize(
                        22,
                      ),
                      width: getSize(
                        22,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                        "+27 9034566774",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeGray900,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 17,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMail,
                      height: getSize(
                        22,
                      ),
                      width: getSize(
                        22,
                      ),
                      margin: getMargin(
                        bottom: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                        "email@gmail.com",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeGray900,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 23,
                ),
                child: Text(
                  "Address",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 4,
                ),
                child: Text(
                  "Kolkata - 731303",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 18,
                ),
                child: Text(
                  "West Bengal, India",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 23,
                ),
                child: Text(
                  "Activity",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 8,
                ),
                child: Text(
                  "My Review",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.bodyLargeBlue700_1,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 16,
                ),
                child: Text(
                  "4 Messages Sent",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 14,
                ),
                child: Text(
                  "Manage Account",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 11,
                ),
                child: Text(
                  "Add Accounts",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 19,
                  bottom: 5,
                ),
                child: Text(
                  "Log Out",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Solaruserbrokendefault:
        return AppRoutes.messagesOnePage;
      case BottomBarEnum.Iconsaxlinearmessage:
        return "/";
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Save:
        return "/";
      case BottomBarEnum.Basilmenuoutlinedefault:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesOnePage:
        return MessagesOnePage();
      default:
        return DefaultWidget();
    }
  }
}
