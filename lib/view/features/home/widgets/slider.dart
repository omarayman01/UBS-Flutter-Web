// ignore_for_file: unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/features/home/widgets/slider_item.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'build/web/assets/assets/slider1.png',
    'build/web/assets/assets/slider2.png',
    'build/web/assets/assets/slider3.png'
  ];
  final mainTexts = ['UBS', 'Talent Acquisition', 'App & Web Development'];
  final subTexts = [
    'Ultimate Buissnes Solutions',
    'Our expertise lies in identifying top talent that aligns perfectly with your organizational needs, ensuring a seamless integration into your team.',
    'Creating cutting-edge digital solutions that optimize user experiences and drive business success.'
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final List<double> mainTextsFonts = [
      screenWidth * 0.12,
      screenWidth * 0.065,
      screenWidth * 0.065
    ];
    final List<double> subTextsFonts = [
      screenWidth * 0.026,
      screenWidth * 0.015,
      screenWidth * 0.015,
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          carouselController: controller,
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return SliderItem(
              text2font: subTextsFonts[index],
              text1font: mainTextsFonts[index],
              text1: mainTexts[index],
              text2: subTexts[index],
              urlImage: urlImage,
            );
          },
          options: CarouselOptions(
            height: screenHeight * 0.7,
            autoPlay: true,
            autoPlayCurve: Curves.decelerate,
            enableInfiniteScroll: false,
            autoPlayInterval: const Duration(seconds: 9),
            autoPlayAnimationDuration: const Duration(seconds: 4),
            enlargeCenterPage: true,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
        ),
        SizedBox(height: screenHeight * 0.05),
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
          dotWidth: 20,
          activeDotColor: AppTheme.primary,
        ),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}
