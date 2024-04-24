import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/themes/themes.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';

class SwitchDarkLight extends StatefulWidget {
  const SwitchDarkLight({super.key});
  @override
  State<SwitchDarkLight> createState() => _SwitchDarkLightState();
}

class _SwitchDarkLightState extends State<SwitchDarkLight> {
  @override
  void initState() {
    super.initState();
    convertValue(CustomAppbarController().selectedLDMode);
  }

  int modeCurrent = CustomAppbarController().selectedLDMode;
  final customAppBarClr = Get.put(CustomAppbarController());
  Future<void> _saveThemeMode(int themeMode) async {
    final numberMode = await SharedPreferences.getInstance();
    await numberMode.setInt('mode', themeMode);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedToggleSwitch<int?>.rolling(
        current: modeCurrent,
        allowUnlistedValues: true,
        values: const [0, 1],
        onChanged: (i) => setState(() {
          modeCurrent = int.parse(i.toString());
          convertValue(modeCurrent);
          Get.changeTheme(modeCurrent == 0
              ? MyAppTheme().darkTheme()
              : MyAppTheme().lightTheme());
          Get.changeThemeMode(
              modeCurrent == 0 ? ThemeMode.dark : ThemeMode.light);
          _saveThemeMode(modeCurrent);
        }),
        iconBuilder: null,
        borderWidth: 4.5,
        minTouchTargetSize: 10,
        style: ToggleStyle(
          indicatorColor: modeCurrent == 0 ? AppColors.gery1 : AppColors.gery6,
          backgroundGradient: AppColors.gradientColor,
          borderColor: const Color.fromARGB(0, 226, 198, 198),
        ),
        height: 26,
        spacing: 10,
        loading: null,
      ),
    );
  }

  void convertValue(int value) {
    if (value == 0) {
      customAppBarClr.modeCurrent.value = false;
    } else {
      customAppBarClr.modeCurrent.value = true;
    }
  }
}
