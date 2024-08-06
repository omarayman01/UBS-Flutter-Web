import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});

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
            InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Icon(
                Icons.menu,
                color: AppTheme.primary,
              ),
            ),
            Image.asset("build/web/assets/assets/logo.png",
                width: screenWidth * 0.15, height: screenHeight * 0.08),
            // Text('UBS',
            //     style: Theme.of(context)
            //         .textTheme
            //         .displayLarge!
            //         .copyWith(fontSize: screenWidth * 0.05)),
          ],
        ),
      ),
    );
  }
}
