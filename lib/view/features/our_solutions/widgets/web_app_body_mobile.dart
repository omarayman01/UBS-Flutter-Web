import 'package:flutter/material.dart';
import 'package:ubs/view/core/footer.dart';
import 'package:ubs/view/core/navigation_bar.dart';
import 'package:ubs/view/features/about_us/widgets/paragraph.dart';

class WebAppBodyMobile extends StatelessWidget {
  const WebAppBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomNavigationBar(),
        SizedBox(height: screenHeight * 0.1),
        SizedBox(
          height: screenHeight * 0.8,
          width: screenWidth * 0.95,
          child: Image.asset(
            "build/web/assets/assets/code1.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: screenHeight * 0.3),
        const Paragraph(
          pc: false,
          rightPic: true,
          url: "build/web/assets/assets/code2.png",
          title: 'Web Development',
          body:
              'We excel in developing web applications with a balanced integration of front-end and back-end technologies. Our front-end development ensures dynamic and interactive user interfaces that work well across all devices, while our back-end solutions manage server-side functions such as database interactions and service integrations. This combination results in scalable, secure, and user-friendly web applications that cater to a wide range of user needs and business requirements.',
        ),
        SizedBox(height: screenHeight * 0.3),
        const Paragraph(
          pc: false,
          rightPic: false,
          url: "build/web/assets/assets/code3.png",
          title: 'Mobile App Development',
          body:
              'We specialize in building mobile applications that offer intuitive and responsive user interfaces paired with robust server-side logic. Our front-end development focuses on creating smooth navigation, appealing visuals, and efficient performance, while our back-end services ensure secure data management, real-time updates, and seamless integration with various services. This comprehensive approach guarantees a seamless and secure mobile experience that meets user needs.',
        ),
        SizedBox(height: screenHeight * 0.2),
        const Footer(pc: false),
      ],
    );
  }
}
