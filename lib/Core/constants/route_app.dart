import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Features/splash/splash_view.dart';

class AppRoute {
  static const String splashScreen = '/';
  static const String calculator = 'calculator';
  static const String probabilityStatistics = 'probability_statistics';
  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashView()),
  ];
}
