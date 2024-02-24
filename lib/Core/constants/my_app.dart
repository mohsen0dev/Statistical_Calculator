import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/route_app.dart';
import 'package:simple_statistical_calculator/Core/themes/themes.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var lightMyAppThemeIns = LightMyAppTheme();
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return GetMaterialApp(
      locale: const Locale('fa'),
      title: 'Statistical Calculator',
      debugShowCheckedModeBanner: false,
      theme: lightMyAppThemeIns.LightTheme(),
      initialRoute: AppRoute.splashScreen,
      getPages: AppRoute.routes,
    );
  }
}
