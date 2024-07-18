import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ubs/view/features/job_form/widgets/job_form_body_mobile.dart';
import 'package:ubs/view/features/job_form/widgets/job_form_body_pc.dart';

class JobFormBody extends StatelessWidget {
  const JobFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const JobFormBodyMobile(),
      tablet: (BuildContext context) => const JobFormBodyPC(),
      desktop: (BuildContext context) => const JobFormBodyPC(),
    );
  }
}
