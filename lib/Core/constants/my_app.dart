import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
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
  int? appVersion;
  final myAppThemeIns = MyAppTheme();
  final customAppBarClr = Get.put(CustomAppbarController());

  Future<void> _loadData() async {
    final numberMode = await SharedPreferences.getInstance();
    int? storedThemeMode = numberMode.getInt('thememode');
    storedThemeMode ??= 0;
    customAppBarClr.selectedLDMode.value = storedThemeMode;
    if (storedThemeMode == 0) {
      customAppBarClr.modeCurrent.value = false;
    } else {
      customAppBarClr.modeCurrent.value = true;
    }
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    appVersion = int.parse(info.buildNumber);
  }

  @override
  Widget build(BuildContext context) {
    _initPackageInfo();
    _loadData();
    AppSize().init(context);
    AppSize().appSectionsPercent();
    return Obx(() => GetMaterialApp(
          title: 'جدول فراوانی',
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
