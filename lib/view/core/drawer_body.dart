import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/constants/routes.dart';
import 'package:ubs/view/core/navigation_bar_item.dart';
import 'package:ubs/view/core/navigation_bar_item_menu.dart';
import 'package:ubs/view/core/navigation_header.dart';
import 'package:ubs/view/core/oursolutions_menu_items.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.6,
      decoration: BoxDecoration(
          color: AppTheme.white,
          boxShadow: [BoxShadow(color: AppTheme.primary, blurRadius: 16)]),
      child: Column(
        children: [
          const NavigationHeader(),
          SizedBox(height: screenHeight * 0.06),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.03),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: AppTheme.primary,
                ),
                SizedBox(width: screenWidth * 0.04),
                const NavigationItem(
                  title: 'Home',
                  route: Routes.homeRoute,
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.03),
            child: Row(
              children: [
                Icon(
                  Icons.input_rounded,
                  color: AppTheme.primary,
                ),
                SizedBox(width: screenWidth * 0.04),
                const NavigationItem(
                  title: 'About Us',
                  route: Routes.aboutUsRoute,
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.03),
            child: Row(
              children: [
                Icon(
                  Icons.real_estate_agent_outlined,
                  color: AppTheme.primary,
                ),
                SizedBox(width: screenWidth * 0.04),
                const NavigationBarItemMenu(
                  pc: false,
                  title: 'Our Solutions',
                  menu: OurSolutionsMenu(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
