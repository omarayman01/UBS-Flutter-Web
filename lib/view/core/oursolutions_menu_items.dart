// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/constants/routes.dart';
import 'package:ubs/view_model/locator/locator.dart';
import 'package:ubs/view_model/services/navigation_service.dart';

class OurSolutionsMenu extends StatelessWidget {
  const OurSolutionsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: screenHeight * 0.07,
          color: Colors.grey[300],
          child: Center(
              child: InkWell(
            onTap: () {
              locator<NavigationService>()
                  .navigateTo(Routes.talentAcquisitionRoute);
            },
            child: Text('Talent Acquisition',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppTheme.primary, fontSize: 12)),
          )),
        ),
        InkWell(
          onTap: () {
            locator<NavigationService>()
                .navigateTo(Routes.webAppDevelopmentRoute);
          },
          child: Container(
            height: screenHeight * 0.07,
            color: Colors.grey[400],
            child: Center(
                child: Text('Mobile & Web Development',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppTheme.primary,
                          fontSize: 12,
                        ))),
          ),
        ),
      ],
    );
  }
}
