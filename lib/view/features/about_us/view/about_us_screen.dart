// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/core/footer.dart';
import 'package:ubs/view/core/navigation_bar.dart';
import 'package:ubs/view/features/about_us/widgets/paragraph.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'build/web/assets/assets/bck.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const CustomNavigationBar(),
                SizedBox(height: screenHeight * 0.1),
                SizedBox(
                    height: screenHeight * 0.8,
                    width: screenWidth * 0.95,
                    child: Image.asset('build/web/assets/assets/aboutus1.png',
                        fit: BoxFit.cover)
                    // CachedNetworkImage(
                    //   imageUrl: "build/web/assets/assets/aboutus1.avif",
                    //   fit: BoxFit.cover,
                    //   errorWidget: (context, url, error) =>
                    //       Icon(Icons.error, color: AppTheme.primary),
                    // ),
                    ),
                SizedBox(height: screenHeight * 0.3),
                const Paragraph(
                  rightPic: true,
                  url: "build/web/assets/assets/aboutus2.png",
                  title: "About Us ",
                  body:
                      'Welcome to Ultimate Business Solutions! We are a dynamic and innovative recruitment agency dedicated to connecting top talent with leading organizations.Our mission is to provide exceptional staffing and recruitment services tailored to meet the unique needs of our clients.',
                ),
                SizedBox(height: screenHeight * 0.3),
                const Paragraph(
                  rightPic: false,
                  url: "build/web/assets/assets/aboutus3.png",
                  title: 'Our Vision',
                  body:
                      'As we continue to grow, we plan to expand our services to include comprehensive HR solutions such as payroll calculations and medical and social insurance. Our goal is to be your trusted partner in all aspects of human resources, supporting your business every step of the way.',
                ),
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
