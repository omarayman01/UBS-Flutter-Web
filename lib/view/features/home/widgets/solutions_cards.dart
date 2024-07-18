import 'package:flutter/material.dart';
import 'package:ubs/view/core/custom_card.dart';
import 'package:ubs/view/extentions/hover_extensions.dart';

class SolutionCards extends StatelessWidget {
  const SolutionCards({super.key, required this.height, required this.width});
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: const CustomCard(
                  text: 'Talent Acquisition',
                  imgUrl: 'build/web/assets/assets/lottie1.json')
              .moveUpONHover,
        ),
        SizedBox(
          height: height,
          width: width,
          child: const CustomCard(
                  text: 'Web & App Development',
                  imgUrl: 'build/web/assets/assets/lottie2.json')
              .moveUpONHover,
        ),
      ],
    );
  }
}
