// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';

class NavigationHeader extends StatelessWidget {
  const NavigationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.3,
      color: AppTheme.primary,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("build/web/assets/assets/logo2.png",
              width: screenWidth * 0.23, height: screenHeight * 0.13),
          // Text('UBS',
          //     style: Theme.of(context)
          //         .textTheme
          //         .displaySmall!
          //         .copyWith(color: AppTheme.white, fontSize: 25)),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Text('Ultimate Business Solutions',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 18, color: AppTheme.white))
        ],
      ),
    );
  }
}
