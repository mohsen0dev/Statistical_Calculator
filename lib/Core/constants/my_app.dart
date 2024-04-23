import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/route_app.dart';
import 'package:simple_statistical_calculator/Core/themes/themes.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final myAppThemeIns = MyAppTheme();
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    AppSize().appSectionsPercent();
    return GetMaterialApp(
      locale: const Locale('fa'),
      debugShowCheckedModeBanner: false,
      theme: myAppThemeIns.lightTheme(),
      darkTheme: myAppThemeIns.darkTheme(),
      themeMode: ThemeMode.dark,
      initialRoute: AppRoute.splashScreen,
      getPages: AppRoute.routes,
    );
  }
}
