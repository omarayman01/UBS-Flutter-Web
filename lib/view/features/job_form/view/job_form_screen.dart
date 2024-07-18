// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ubs/view/core/drawer_body.dart';

import 'package:ubs/view/features/job_form/widgets/job_form_body.dart';

class JobFormScreen extends StatelessWidget {
  const JobFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const DrawerBody()
            : null,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'build/web/assets/assets/bck.png',
                  fit: BoxFit.cover,
                ),
              ),
              const JobFormBody()
            ],
          ),
        ),
      ),
    );
  }
}
