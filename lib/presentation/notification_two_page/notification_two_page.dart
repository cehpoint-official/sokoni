import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationTwoPage extends StatefulWidget {
  const NotificationTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationTwoPageState createState() => NotificationTwoPageState();
}

class NotificationTwoPageState extends State<NotificationTwoPage>
    with AutomaticKeepAliveClientMixin<NotificationTwoPage> {
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
                Container(
                  margin: getMargin(
                    top: 46,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 10,
                    right: 20,
                    bottom: 10,
                  ),
                  decoration: AppDecoration.fill1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgMditagmultiple,
                            height: getVerticalSize(
                              40,
                            ),
                            width: getHorizontalSize(
                              41,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 7,
                              bottom: 9,
                            ),
                            child: Text(
                              "Notification 1",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: getHorizontalSize(
                          237,
                        ),
                        margin: getMargin(
                          left: 53,
                          bottom: 6,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec velit eros, congue...",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodyMediumBlack90001_2,
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
