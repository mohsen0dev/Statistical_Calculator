import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/route_app.dart';
import 'package:simple_statistical_calculator/Core/themes/themes.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myAppThemeIns = MyAppTheme();
  final customAppBarClr = Get.put(CustomAppbarController());

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    AppSize().appSectionsPercent();
    return GetMaterialApp(
      locale: const Locale('fa'),
      debugShowCheckedModeBanner: false,
      theme: customAppBarClr.selectedLDMode == 0
          ? myAppThemeIns.darkTheme()
          : myAppThemeIns.lightTheme(),
      darkTheme: myAppThemeIns.darkTheme(),
      initialRoute: AppRoute.splashScreen,
      getPages: AppRoute.routes,
    );
  }
}
