import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_appbar.dart';

class CustomSelectionAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSelectionAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(AppSize.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar();
  }
}
