import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';
import 'package:sakuni/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:sakuni/presentation/messages_screen/messages_screen.dart';
import 'package:sakuni/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:sakuni/presentation/payment_screen/payment_screen.dart';
import 'package:sakuni/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:sakuni/presentation/profile_screen/profile_screen.dart';
import 'package:sakuni/presentation/profile_two_screen/profile_two_screen.dart';
import 'package:sakuni/presentation/three_bar_screen/three_bar_screen.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgSolaruserbrokendefault,
      activeIcon: ImageConstant.imgSolaruserbrokendefault,
      type: BottomBarEnum.Solaruserbrokendefault,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconsaxlinearmessage,
      activeIcon: ImageConstant.imgIconsaxlinearmessage,
      type: BottomBarEnum.Iconsaxlinearmessage,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSave,
      activeIcon: ImageConstant.imgSave,
      type: BottomBarEnum.Save,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBasilmenuoutlinedefault,
      activeIcon: ImageConstant.imgBasilmenuoutlinedefault,
      type: BottomBarEnum.Basilmenuoutlinedefault,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: CustomImageView(
              svgPath: ImageConstant.imgSolaruserbrokendefault,
              height: getSize(
                31,
              ),
              width: getSize(
                31,
              ),
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CustomImageView(
              svgPath: ImageConstant.imgIconsaxlinearmessage,
              height: getSize(
                31,
              ),
              width: getSize(
                31,
              ),
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CustomImageView(
              svgPath: ImageConstant.imgHome,
              height: getSize(
                31,
              ),
              width: getSize(
                31,
              ),
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CustomImageView(
              svgPath: ImageConstant.imgSave,
              height: getSize(
                31,
              ),
              width: getSize(
                31,
              ),
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CustomImageView(
              svgPath: ImageConstant.imgBasilmenuoutlinedefault,
              height: getSize(
                31,
              ),
              width: getSize(
                31,
              ),
              color: Colors.black,
            ),
          )
        ],
        onTap: (index) {
          selectedIndex = index;
          if (selectedIndex == 0) {
            print(index);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileTwoScreen(),
                ));
          }
          if (selectedIndex == 1) {
            print(index);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ));
          }
          if (selectedIndex == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeTabContainerScreen(),
                ));
          }
          if (selectedIndex == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentOneScreen(),
                ));
          }
          if (selectedIndex == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThreeBarScreen(),
                ));
          }
          setState(() {});
          print(index);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Solaruserbrokendefault,
  Iconsaxlinearmessage,
  Home,
  Save,
  Basilmenuoutlinedefault,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
