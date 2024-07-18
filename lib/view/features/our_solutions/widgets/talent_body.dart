import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ubs/view/features/our_solutions/widgets/talent_body_mobile.dart';
import 'package:ubs/view/features/our_solutions/widgets/talent_body_pc.dart';

class TalentBody extends StatelessWidget {
  const TalentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const TalentBodyMobile(),
      tablet: (BuildContext context) => const TalentBodyPC(),
      desktop: (BuildContext context) => const TalentBodyPC(),
    );
  }
}
