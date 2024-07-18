import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ubs/view/features/about_us/widgets/about_us_body_mobile.dart';
import 'package:ubs/view/features/about_us/widgets/about_us_body_pc.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const AboutUsBodyMobile(),
      tablet: (BuildContext context) => const AboutUsBodyPC(),
      desktop: (BuildContext context) => const AboutUsBodyPC(),
    );
  }
}
