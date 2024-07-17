// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/core/footer.dart';
import 'package:ubs/view/core/navigation_bar.dart';
import 'package:ubs/view/features/job_form/widgets/job_form.dart';

class JobFormScreen extends StatelessWidget {
  const JobFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                'https://images.unsplash.com/photo-1615800098779-1be32e60cca3?q=80&w=1420&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const CustomNavigationBar(),
                SizedBox(height: screenHeight * 0.2),
                Text('Business Inquiries',
                    style: Theme.of(context).textTheme.displayMedium),
                SizedBox(height: screenHeight * 0.1),
                const JobForm(),
                SizedBox(height: screenHeight * 0.2),
                const Footer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
