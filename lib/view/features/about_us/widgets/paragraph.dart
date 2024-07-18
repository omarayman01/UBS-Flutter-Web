import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ubs/view/constants/app_theme.dart';

class Paragraph extends StatelessWidget {
  const Paragraph(
      {super.key,
      required this.title,
      required this.body,
      this.rightPic,
      this.url,
      required this.pc});
  final String title, body;
  final bool? rightPic;
  final bool pc;

  final String? url;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return pc
        ? rightPic!
            ? Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.4,
                          child: Image.asset(url!, fit: BoxFit.cover)),
                      SizedBox(width: screenWidth * 0.05),
                      SizedBox(
                        width: screenWidth * 0.4,
                        child: Text(
                          textAlign: TextAlign.left,
                          softWrap: true,
                          body,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppTheme.black,
                                    height: 1.9,
                                  ),
                        ).animate().fade(delay: 2.seconds),
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.4,
                        child: Text(
                          textAlign: TextAlign.left,
                          softWrap: true,
                          body,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppTheme.black,
                                    height: 1.9,
                                  ),
                        ).animate().fade(delay: 2.seconds),
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      SizedBox(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.4,
                          child: Image.asset(url!, fit: BoxFit.cover)),
                    ],
                  ),
                ],
              )
        : rightPic!
            ? Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.5,
                          child: Image.asset(url!, fit: BoxFit.cover)),
                      SizedBox(width: screenWidth * 0.05),
                      SizedBox(
                        width: screenWidth * 0.4,
                        child: Text(
                          textAlign: TextAlign.left,
                          softWrap: true,
                          body,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: AppTheme.black,
                                  height: 1.6,
                                  fontSize: 10),
                        ).animate().fade(delay: 2.seconds),
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.4,
                        child: Text(
                          textAlign: TextAlign.left,
                          softWrap: true,
                          body,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: AppTheme.black,
                                  height: 1.6,
                                  fontSize: 10),
                        ).animate().fade(delay: 2.seconds),
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      SizedBox(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.5,
                          child: Image.asset(url!, fit: BoxFit.cover)),
                    ],
                  ),
                ],
              );
  }
}
