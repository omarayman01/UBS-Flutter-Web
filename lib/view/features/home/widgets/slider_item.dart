import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ubs/view/constants/app_theme.dart';

class SliderItem extends StatelessWidget {
  const SliderItem(
      {super.key,
      required this.urlImage,
      required this.text1,
      required this.text2,
      required this.text1font,
      required this.text2font});
  final String urlImage;
  final String text1, text2;
  final double text1font, text2font;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: screenWidth * 0.4,
                    child: Center(
                      child: Text(
                        text1,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontSize: text1font, color: AppTheme.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Center(
                  child: SizedBox(
                    width: screenWidth * 0.5,
                    child: Center(
                      child: Text(
                        softWrap: true,
                        text2,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppTheme.white, fontSize: text2font),
                      ).animate().fade(delay: 2.seconds).slideY(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
