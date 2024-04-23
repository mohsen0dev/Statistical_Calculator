import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/constants/route_app.dart';
import 'package:simple_statistical_calculator/Core/gen/assets.gen.dart';

class SplashView extends StatefulWidget {
  final bool? selectedDarkLight;
  const SplashView({
    super.key,
    this.selectedDarkLight = false,
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
    return Scaffold(
      backgroundColor:
          widget.selectedDarkLight! ? AppColors.gery7 : AppColors.gery1,
      body: Center(
        child: widget.selectedDarkLight!
            ? Assets.images.logoWhite.image()
            : Assets.images.logoDark.image(),
      ),
    );
  }
}
