import 'package:flutter/material.dart';
import 'package:ubs/view/core/footer.dart';
import 'package:ubs/view/core/navigation_bar.dart';
import 'package:ubs/view/features/about_us/widgets/paragraph.dart';

class TalentBodyPC extends StatelessWidget {
  const TalentBodyPC({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomNavigationBar(),
        SizedBox(height: screenHeight * 0.1),
        SizedBox(
          height: screenHeight * 0.6,
          width: screenWidth * 0.95,
          child: Image.asset(
            "build/web/assets/assets/re1.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: screenHeight * 0.3),
        const Paragraph(
          pc: true,
          rightPic: false,
          url: "build/web/assets/assets/re2.png",
          title: 'Talent Acquisitions',
          body: """ At Ultimate Business Solutions, we specialize in:
Staffing Solutions: Whether you need temporary, contract, or permanent staff, we have a diverse pool of qualified candidates ready to meet your business demands.
Recruitment Services: Our expert recruiters use cutting-edge technology and industry insights to identify and attract the best talent for your organization.Customized 
Talent Acquisition: We understand that every business is unique. Our tailored recruitment strategies ensure we find the perfect fit for your company culture and specific requirements.
                  """,
        ),
        SizedBox(height: screenHeight * 0.1),
        const Paragraph(
            pc: true,
            url: "build/web/assets/assets/re3.png",
            rightPic: true,
            title: '',
            body: """ Why Choose Us?
Expertise: Our team of seasoned professionals has extensive experience in various industries, ensuring we understand your needs and deliver results.
Efficiency: We streamline the hiring process, saving you time and resources while ensuring a smooth and effective recruitment experience.
Quality: We are committed to excellence, providing high-quality candidates who drive success and growth for your business."""),
        SizedBox(height: screenHeight * 0.2),
        const Footer(
          pc: true,
        ),
      ],
    );
  }
}
