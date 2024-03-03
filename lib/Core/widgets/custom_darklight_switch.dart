import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';

class SwitchDarkLight extends StatefulWidget {
 const SwitchDarkLight({super.key});
 static int? modeCurrent = 0;
  @override
  State<SwitchDarkLight> createState() => _SwitchDarkLightState();
}

class _SwitchDarkLightState extends State<SwitchDarkLight> {
  final customAppBarClr=Get.put(CustomAppbarController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedToggleSwitch<int?>.rolling(
        current: SwitchDarkLight.modeCurrent,
        allowUnlistedValues: true,
        values: const [0, 1],
        onChanged: (i) => setState(() {SwitchDarkLight.modeCurrent= i;convertValue(SwitchDarkLight.modeCurrent.toString());} ),
        iconBuilder: null,
        borderWidth: 4.5,
        minTouchTargetSize: 10,
        style: ToggleStyle(
          indicatorColor: SwitchDarkLight.modeCurrent== 0 ? AppColors.gery1 : AppColors.gery6,
          backgroundGradient: AppColors.GradientColor,
          borderColor: const Color.fromARGB(0, 226, 198, 198),
        ),
        height: 26,
        spacing: 10,
        loading: null,
      ),
    );
  }
  void convertValue(String value){
      int convertToInt;
      convertToInt=int.parse(value);
      customAppBarClr.modeCurrent.value=convertToInt;
  }
}
