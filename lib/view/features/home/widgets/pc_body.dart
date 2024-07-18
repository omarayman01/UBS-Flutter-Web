import 'package:flutter/material.dart';
import 'package:ubs/view/core/footer.dart';
import 'package:ubs/view/core/navigation_bar.dart';
import 'package:ubs/view/features/home/widgets/slider.dart';
import 'package:ubs/view/features/home/widgets/solutions_cards.dart';

class PCBody extends StatelessWidget {
  const PCBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomNavigationBar(),
        SizedBox(height: screenHeight * 0.1),
        const SliderWidget(),
        SizedBox(height: screenHeight * 0.2),
        Center(
          child: Text('Our Solutions',
              style: Theme.of(context).textTheme.displayLarge),
        ),
        SizedBox(height: screenHeight * 0.07),
        SolutionCards(
          height: screenHeight * 0.4,
          width: screenWidth * 0.2,
        ),
        SizedBox(height: screenHeight * 0.2),
        const Footer(
          pc: true,
        ),
      ],
    );
  }
}
