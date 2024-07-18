import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ubs/view/core/navigation_bar_mobile.dart';
import 'package:ubs/view/core/navigation_bar_pc.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const NavigationBarMobile(),
      tablet: (BuildContext context) => const CustomNavigationBarPC(),
      desktop: (BuildContext context) => const CustomNavigationBarPC(),
    );
  }
}
