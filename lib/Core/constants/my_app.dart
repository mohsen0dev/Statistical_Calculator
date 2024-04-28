import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  Future<void> _loadThemeMode() async {
    final numberMode = await SharedPreferences.getInstance();
    int? storedMode = numberMode.getInt('mode');
    storedMode ??= 0;
    customAppBarClr.selectedLDMode.value = storedMode;
    if (storedMode == 0) {
      customAppBarClr.modeCurrent.value = false;
    } else {
      customAppBarClr.modeCurrent.value = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    _loadThemeMode();
    AppSize().init(context);
    AppSize().appSectionsPercent();
    return Obx(() => GetMaterialApp(
          title: 'نمودار فراوانی',
          locale: const Locale('fa'),
          debugShowCheckedModeBanner: false,
          theme: customAppBarClr.selectedLDMode.value == 0
              ? myAppThemeIns.darkTheme()
              : myAppThemeIns.lightTheme(),
          initialRoute: AppRoute.splashScreen,
          getPages: AppRoute.routes,
        ));
  }
}
