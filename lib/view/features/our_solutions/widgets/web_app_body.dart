import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ubs/view/features/our_solutions/widgets/web_app_body_mobile.dart';
import 'package:ubs/view/features/our_solutions/widgets/web_app_body_pc.dart';

class WebAppBody extends StatelessWidget {
  const WebAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const WebAppBodyMobile(),
      tablet: (BuildContext context) => const WebAppBodyPC(),
      desktop: (BuildContext context) => const WebAppBodyPC(),
    );
  }
}
