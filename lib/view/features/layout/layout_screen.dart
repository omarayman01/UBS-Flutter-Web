// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key, this.screen});
  final Widget? screen;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'build/web/assets/assets/bck.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(child: screen!),
          // Expanded(
          //     child: Navigator(
          //   key: locator<NavigationService>().navigatorkey,
          //   onGenerateRoute: generateRoute,
          //   initialRoute: Routes.homeRoute,
          // ))
        ],
      ),
    );
  }
}
