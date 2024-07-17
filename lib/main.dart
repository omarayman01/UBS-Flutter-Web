import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ubs/firebase_options.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/constants/routes.dart';
import 'package:ubs/view/features/about_us/view/about_us_screen.dart';
import 'package:ubs/view/features/home/view/home_screen.dart';
import 'package:ubs/view/features/job_form/view/job_form_screen.dart';
import 'package:ubs/view/features/layout/layout_screen.dart';
import 'package:ubs/view/features/our_solutions/view/talent_acquisition_screen.dart';
import 'package:ubs/view/features/our_solutions/view/web_app_development_screen.dart';
import 'package:ubs/view_model/cubits/form/apply_form_cubit.dart';
import 'package:ubs/view_model/locator/locator.dart';
import 'package:ubs/view_model/repos/form_repo_impl.dart';
import 'package:ubs/view_model/services/navigation_service.dart';
import 'package:ubs/view_model/services/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.disableNetwork;
  setupLocator();

  runApp(BlocProvider(
    create: (context) => ApplyFormCubit(FormRepoImpl()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   Routes.homeRoute: (context) => const HomeScreen(),
      //   Routes.aboutUsRoute: (context) => const AboutUsScreen(),
      //   // Routes.layoutRoute: (context) => const LayoutScreen(),
      //   Routes.talentAcquisitionRoute: (context) =>
      //       const TalentAcquisitionScreen(),
      //   Routes.webAppDevelopmentRoute: (context) =>
      //       const WebAppDevelopmentScreen(),
      //   Routes.jobFormRoute: (context) => const JobFormScreen(),
      // },
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      builder: (context, child) => LayoutScreen(
        screen: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorkey,
      onGenerateRoute: generateRoute,
      initialRoute: Routes.homeRoute,
      // home: LayoutScreen(),
    );
  }
}
