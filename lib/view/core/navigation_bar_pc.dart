import 'package:flutter/material.dart';
import 'package:ubs/view/constants/routes.dart';
import 'package:ubs/view/core/navigation_bar_item.dart';
import 'package:ubs/view/core/navigation_bar_item_menu.dart';
import 'package:ubs/view/core/oursolutions_menu_items.dart';

class CustomNavigationBarPC extends StatelessWidget {
  const CustomNavigationBarPC({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth * 0.08,
        top: screenHeight * 0.015,
        left: screenWidth * 0.08,
      ),
      child: SizedBox(
        height: screenHeight * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('UBS',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: screenWidth * 0.05)),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const NavigationItem(
                  title: 'Home',
                  route: Routes.homeRoute,
                ),
                SizedBox(width: screenWidth * 0.05),
                const NavigationItem(
                  title: 'About Us',
                  route: Routes.aboutUsRoute,
                ),
                SizedBox(width: screenWidth * 0.05),
                const NavigationBarItemMenu(
                  pc: true,
                  title: 'Our Solutions',
                  menu: OurSolutionsMenu(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
