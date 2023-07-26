import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RequirementsPage extends StatefulWidget {
  const RequirementsPage({Key? key})
      : super(
          key: key,
        );

  @override
  RequirementsPageState createState() => RequirementsPageState();
}

class RequirementsPageState extends State<RequirementsPage>
    with AutomaticKeepAliveClientMixin<RequirementsPage> {
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
                    left: 16,
                    top: 30,
                    right: 23,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgGroup2041,
                              height: getSize(
                                33,
                              ),
                              width: getSize(
                                33,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 7,
                                bottom: 2,
                              ),
                              child: Text(
                                "Enquiry to abc Electronic",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "I am interested in SUMSUNG M04.Lorem ipsum dolor sit a..",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodyMediumBluegray90001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                          right: 1,
                        ),
                        child: Text(
                          "27 June",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallBluegray90001,
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
