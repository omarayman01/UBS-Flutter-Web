// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/core/footer.dart';
import 'package:ubs/view/core/navigation_bar.dart';
import 'package:ubs/view/features/job_form/widgets/job_form.dart';

class JobFormBodyMobile extends StatelessWidget {
  const JobFormBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomNavigationBar(),
        SizedBox(height: screenHeight * 0.2),
        Text('Business Inquiries',
            style: Theme.of(context).textTheme.displayMedium),
        SizedBox(height: screenHeight * 0.1),
        const JobForm(
          pc: false,
        ),
        SizedBox(height: screenHeight * 0.2),
        const Footer(
          pc: false,
        ),
      ],
    );
  }
}
