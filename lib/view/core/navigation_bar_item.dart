// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/extentions/hover_extensions.dart';
import 'package:ubs/view_model/locator/locator.dart';
import 'package:ubs/view_model/services/navigation_service.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.title,
    this.route,
  });
  final String title;
  final String? route;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        debugPrint("TAPPED");
        locator<NavigationService>().navigateTo(route!);
      },
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: AppTheme.primary),
      ).moveUpONHover.showCursorOnHover,
    );
  }
}
