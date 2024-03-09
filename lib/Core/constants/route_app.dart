import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Features/splash_view.dart';
import '../../Features/main_page_screen.dart';

class AppRoute {
  static const String splashScreen = '/';
  static const String mainPage = '/mainpage';
  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashView()),
    GetPage(name: mainPage, page: () => const MainPageScreen())
  ];
}
