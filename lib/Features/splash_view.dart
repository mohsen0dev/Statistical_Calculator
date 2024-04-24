import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_statistical_calculator/Core/constants/route_app.dart';
import 'package:simple_statistical_calculator/Core/gen/assets.gen.dart';
import 'package:simple_statistical_calculator/Core/themes/themes.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({
    super.key,
  });

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoute.mainPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomAppbarController>(
      init: CustomAppbarController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          backgroundColor: _.selectedLDMode.value == 0
              ? MyAppTheme().darkTheme().colorScheme.onSurface
              : MyAppTheme().lightTheme().colorScheme.onSurface,
          body: Center(
            child: LottieBuilder.asset(
              Assets.jsonimages.animation1,
              width: 200,
              height: 200,
            ),
          ),
        );
      },
    );
  }
}
