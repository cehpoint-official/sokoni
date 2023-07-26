import 'package:flutter/material.dart';import 'package:sakuni/core/app_export.dart';import 'package:sakuni/presentation/messages_one_page/messages_one_page.dart';import 'package:sakuni/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class MessagesOneContainerScreen extends StatelessWidget {MessagesOneContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: Navigator(key: navigatorKey, initialRoute: AppRoutes.messagesOnePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Solaruserbrokendefault: return AppRoutes.messagesOnePage; case BottomBarEnum.Iconsaxlinearmessage: return "/"; case BottomBarEnum.Home: return "/"; case BottomBarEnum.Save: return "/"; case BottomBarEnum.Basilmenuoutlinedefault: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.messagesOnePage: return MessagesOnePage(); default: return DefaultWidget();} } 
 }
