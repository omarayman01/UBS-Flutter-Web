import 'package:flutter/material.dart';
import 'package:ubs/view/constants/routes.dart';
import 'package:ubs/view/features/about_us/view/about_us_screen.dart';
import 'package:ubs/view/features/home/view/home_screen.dart';
import 'package:ubs/view/features/job_form/view/job_form_screen.dart';
import 'package:ubs/view/features/our_solutions/view/talent_acquisition_screen.dart';
import 'package:ubs/view/features/our_solutions/view/web_app_development_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.homeRoute:
      return getPageRoute(const HomeScreen());
    case Routes.aboutUsRoute:
      return getPageRoute(const AboutUsScreen());
    case Routes.talentAcquisitionRoute:
      return getPageRoute(const TalentAcquisitionScreen());
    case Routes.webAppDevelopmentRoute:
      return getPageRoute(const WebAppDevelopmentScreen());
    case Routes.jobFormRoute:
      return getPageRoute(const JobFormScreen());
    default:
      return getPageRoute(const HomeScreen());
  }
}

PageRoute getPageRoute(Widget child) {
  // return MaterialPageRoute(builder: (context) => child);
  return FadeRoute(child: child);
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;
  FadeRoute({required this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
