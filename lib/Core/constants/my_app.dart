import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/route_app.dart';
import 'package:simple_statistical_calculator/Core/themes/themes.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_view.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final lightMyAppThemeIns = LightMyAppTheme();
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    AppSize().appSectionsPercent();
    return GetMaterialApp(
      locale: const Locale('fa'),
      title: 'Statistical Calculator',
      debugShowCheckedModeBanner: false,
      theme: lightMyAppThemeIns.lightTheme(),
      initialRoute: AppRoute.splashScreen,
      getPages: AppRoute.routes,
    );
  }
}
