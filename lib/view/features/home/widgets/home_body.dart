import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ubs/view/features/home/widgets/mobile_body.dart';
import 'package:ubs/view/features/home/widgets/pc_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const MobileBody(),
      tablet: (BuildContext context) => const PCBody(),
      desktop: (BuildContext context) => const PCBody(),
    );
  }
}
