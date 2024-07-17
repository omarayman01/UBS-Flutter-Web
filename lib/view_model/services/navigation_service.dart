import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorkey.currentState!.pushNamed(routeName);
  }

  void goBack() {
    return navigatorkey.currentState!.pop();
  }
}
