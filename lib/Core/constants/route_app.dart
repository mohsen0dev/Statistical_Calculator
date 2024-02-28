import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_view.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_view.dart';
import 'package:simple_statistical_calculator/Features/splash/splash_view.dart';

class AppRoute {
  static const String splashScreen = '/';
  static const String calculator = '/calculator';
  static const String probabilityStatistics = '/probability_statistics';
  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashView()),
    GetPage(name: calculator, page: () => const CalculatorView()),
    GetPage(
        name: probabilityStatistics,
        page: () => const ProbabilityStatisticsView()),
  ];
}
