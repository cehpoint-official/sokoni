import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/widgets/custom_icon_button.dart';
import 'package:sakuni/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ChatOnePage extends StatefulWidget {
  const ChatOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  ChatOnePageState createState() => ChatOnePageState();
}

class ChatOnePageState extends State<ChatOnePage>
    with AutomaticKeepAliveClientMixin<ChatOnePage> {
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
                  padding: getPadding(
                    left: 15,
                    top: 5,
                    right: 13,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 20,
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
                                style: CustomTextStyles.bodySmallBluegray90001,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgCheckmarkGray40002,
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
                      Container(
                        margin: getMargin(
                          left: 1,
                          top: 78,
                          right: 4,
                        ),
                        decoration: AppDecoration.fill1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomOutlinedButton(
                              width: getHorizontalSize(
                                63,
                              ),
                              height: getVerticalSize(
                                39,
                              ),
                              text: "Hi",
                              margin: getMargin(
                                bottom: 1,
                              ),
                              buttonStyle:
                                  CustomButtonStyles.outlineBlue200TL19,
                              buttonTextStyle: theme.textTheme.bodyLarge!,
                            ),
                            Container(
                              margin: getMargin(
                                bottom: 1,
                              ),
                              padding: getPadding(
                                left: 10,
                                top: 6,
                                right: 10,
                                bottom: 6,
                              ),
                              decoration: AppDecoration.outline14.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder19,
                              ),
                              child: Padding(
                                padding: getPadding(
                                  top: 2,
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
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: IntrinsicWidth(
                                child: SizedBox(
                                  height: getVerticalSize(
                                    39,
                                  ),
                                  width: getHorizontalSize(
                                    143,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle3034,
                                        height: getVerticalSize(
                                          39,
                                        ),
                                        width: getHorizontalSize(
                                          160,
                                        ),
                                        alignment: Alignment.centerRight,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: getPadding(
                                            bottom: 6,
                                          ),
                                          child: Text(
                                            "Share product photos?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodyLarge,
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
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                padding: getPadding(
                                  left: 11,
                                  top: 12,
                                  right: 11,
                                  bottom: 12,
                                ),
                                decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgMdismileyoutline,
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
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              "Mess..",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack90001_1,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgComponent1,
                                            height: getVerticalSize(
                                              25,
                                            ),
                                            width: getHorizontalSize(
                                              14,
                                            ),
                                            alignment: Alignment.centerLeft,
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
                                bottom: 4,
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
                                left: 5,
                                top: 3,
                                bottom: 4,
                              ),
                              padding: getPadding(
                                all: 15,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgCameraBlueGray400,
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
      ),
    );
  }
}
