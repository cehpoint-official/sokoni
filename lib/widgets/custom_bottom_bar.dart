import 'package:flutter/material.dart';
import 'package:sakuni/core/app_export.dart';

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
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                31,
              ),
              width: getSize(
                31,
              ),
              color: theme.colorScheme.primary,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: getVerticalSize(
                36,
              ),
              width: getHorizontalSize(
                34,
              ),
              color: theme.colorScheme.secondaryContainer,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
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
