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
      return getPageRoute(const HomeScreen(), settings);
    case Routes.aboutUsRoute:
      return getPageRoute(const AboutUsScreen(), settings);
    case Routes.talentAcquisitionRoute:
      return getPageRoute(const TalentAcquisitionScreen(), settings);
    case Routes.webAppDevelopmentRoute:
      return getPageRoute(const WebAppDevelopmentScreen(), settings);
    case Routes.jobFormRoute:
      return getPageRoute(const JobFormScreen(), settings);
    default:
      return getPageRoute(const HomeScreen(), settings);
  }
}

PageRoute getPageRoute(Widget child, RouteSettings settings) {
  // return MaterialPageRoute(builder: (context) => child);
  return FadeRoute(settings.name!, child);
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  FadeRoute(this.routeName, this.child)
      : super(
            settings: RouteSettings(name: routeName),
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
