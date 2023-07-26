import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/app_bar/appbar_button_2.dart';
import 'package:sakuni/widgets/app_bar/appbar_image.dart';
import 'package:sakuni/widgets/app_bar/custom_app_bar.dart';
import 'package:sakuni/widgets/custom_elevated_button.dart';
import 'package:sakuni/widgets/custom_icon_button.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';

class ChatSixScreen extends StatelessWidget {
  const ChatSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskgroup,
                height: getVerticalSize(
                  832,
                ),
                width: getHorizontalSize(
                  428,
                ),
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        66,
                      ),
                      title: AppbarButton2(
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                      actions: [
                        AppbarImage(
                          height: getVerticalSize(
                            27,
                          ),
                          width: getHorizontalSize(
                            28,
                          ),
                          svgPath: ImageConstant.imgIcroundcallGray20004,
                          margin: getMargin(
                            left: 10,
                            top: 19,
                            right: 10,
                            bottom: 19,
                          ),
                        ),
                      ],
                      styleType: Style.bgFill,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: getPadding(
                          top: 11,
                        ),
                        child: Container(
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                width: getHorizontalSize(
                                  180,
                                ),
                                height: getVerticalSize(
                                  29,
                                ),
                                text: "You contacted this seler",
                                buttonStyle: CustomButtonStyles.fillLightblue50,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumBlack90001_3,
                              ),
                              Container(
                                width: getHorizontalSize(
                                  339,
                                ),
                                margin: getMargin(
                                  left: 31,
                                  top: 13,
                                  right: 31,
                                ),
                                padding: getPadding(
                                  left: 64,
                                  top: 18,
                                  right: 64,
                                  bottom: 18,
                                ),
                                decoration: AppDecoration.fill7.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle3158,
                                      height: getVerticalSize(
                                        143,
                                      ),
                                      width: getHorizontalSize(
                                        160,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          6,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 12,
                                      ),
                                      child: Text(
                                        "Bulbs installation",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: getHorizontalSize(
                                          199,
                                        ),
                                        margin: getMargin(
                                          left: 12,
                                          top: 6,
                                          bottom: 18,
                                        ),
                                        child: Text(
                                          "Lorem, ipsum dolor sit amet consectetur adipisicing elit. ",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodyLargeBluegray90001,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    top: 4,
                                    right: 34,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "27 June",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallBluegray90001,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCheckmarkGreen700,
                                        height: getVerticalSize(
                                          17,
                                        ),
                                        width: getHorizontalSize(
                                          16,
                                        ),
                                        margin: getMargin(
                                          left: 4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  171,
                                ),
                                width: getHorizontalSize(
                                  361,
                                ),
                                margin: getMargin(
                                  top: 34,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: getPadding(
                                          left: 9,
                                          top: 20,
                                          right: 9,
                                          bottom: 20,
                                        ),
                                        decoration:
                                            AppDecoration.fill7.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder6,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle3158,
                                                  height: getVerticalSize(
                                                    62,
                                                  ),
                                                  width: getHorizontalSize(
                                                    70,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      6,
                                                    ),
                                                  ),
                                                  margin: getMargin(
                                                    top: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    238,
                                                  ),
                                                  margin: getMargin(
                                                    left: 15,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Modi, vero? Provident libero dolor.",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyLarge16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 11,
                                                  right: 14,
                                                  bottom: 36,
                                                ),
                                                child: Text(
                                                  "Your Service will be delivered on July 25th",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodyMediumGreen80002,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      width: getHorizontalSize(
                                        179,
                                      ),
                                      height: getVerticalSize(
                                        39,
                                      ),
                                      text: "Pay Now",
                                      buttonStyle:
                                          CustomButtonStyles.fillIndigo900011,
                                      buttonTextStyle:
                                          CustomTextStyles.titleMediumPrimary16,
                                      alignment: Alignment.bottomRight,
                                    ),
                                    CustomElevatedButton(
                                      width: getHorizontalSize(
                                        181,
                                      ),
                                      height: getVerticalSize(
                                        39,
                                      ),
                                      text: "Cancel",
                                      margin: getMargin(
                                        left: 1,
                                      ),
                                      buttonStyle:
                                          CustomButtonStyles.fillBluegray200,
                                      buttonTextStyle:
                                          CustomTextStyles.titleMediumPrimary16,
                                      alignment: Alignment.bottomLeft,
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    top: 5,
                                    right: 21,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "27 June",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallBluegray90001,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCheckmarkGray40002,
                                        height: getVerticalSize(
                                          17,
                                        ),
                                        width: getHorizontalSize(
                                          16,
                                        ),
                                        margin: getMargin(
                                          left: 4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 5,
                                  top: 78,
                                  right: 5,
                                ),
                                decoration: AppDecoration.fill1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomOutlinedButton(
                                      width: getHorizontalSize(
                                        63,
                                      ),
                                      height: getVerticalSize(
                                        39,
                                      ),
                                      text: "Hi",
                                      buttonStyle:
                                          CustomButtonStyles.outlineBlue200TL19,
                                      buttonTextStyle:
                                          theme.textTheme.bodyLarge!,
                                    ),
                                    Container(
                                      padding: getPadding(
                                        left: 10,
                                        top: 7,
                                        right: 10,
                                        bottom: 7,
                                      ),
                                      decoration:
                                          AppDecoration.outline14.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder19,
                                      ),
                                      child: Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "Price of product?",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: IntrinsicWidth(
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            39,
                                          ),
                                          width: getHorizontalSize(
                                            143,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle303439x160,
                                                height: getVerticalSize(
                                                  39,
                                                ),
                                                width: getHorizontalSize(
                                                  160,
                                                ),
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                  "Share product photos?",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      theme.textTheme.bodyLarge,
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
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: getPadding(
                                          left: 11,
                                          top: 13,
                                          right: 11,
                                          bottom: 13,
                                        ),
                                        decoration:
                                            AppDecoration.outline.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMdismileyoutline,
                                              height: getSize(
                                                32,
                                              ),
                                              width: getSize(
                                                32,
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                25,
                                              ),
                                              width: getHorizontalSize(
                                                66,
                                              ),
                                              margin: getMargin(
                                                left: 3,
                                                top: 5,
                                                bottom: 1,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Text(
                                                      "Mess..",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyLargeBlack90001_1,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgComponent1,
                                                    height: getVerticalSize(
                                                      25,
                                                    ),
                                                    width: getHorizontalSize(
                                                      14,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 50,
                                      width: 50,
                                      margin: getMargin(
                                        left: 8,
                                        top: 3,
                                        bottom: 3,
                                      ),
                                      padding: getPadding(
                                        all: 14,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgLocation,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 50,
                                      width: 50,
                                      margin: getMargin(
                                        left: 4,
                                        top: 3,
                                        bottom: 3,
                                      ),
                                      padding: getPadding(
                                        all: 15,
                                      ),
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCameraBlueGray400,
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
