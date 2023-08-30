import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sakuni/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:sakuni/theme/theme_helper.dart';
import 'package:sakuni/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeTabContainerScreen(),
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'sakuni',
      debugShowCheckedModeBanner: false,

      // initialRoute: AppRoutes.homePage,
      routes: AppRoutes.routes,
    );
  }
}
