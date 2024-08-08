// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key, required this.pc});
  final bool pc;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return pc
        ? Container(
            color: AppTheme.primary,
            height: screenHeight * 0.4,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("build/web/assets/assets/logo2.png",
                        width: screenWidth * 0.18, height: screenHeight * 0.09),
                    // Text('UBS',
                    //     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    //         color: AppTheme.white,
                    //         fontSize: screenWidth * 0.06)),
                    SizedBox(height: screenHeight * 0.05),
                    SizedBox(
                      width: screenWidth * 0.4,
                      child: Column(
                        children: [
                          Text(
                              softWrap: true,
                              'At Ultimate Buissness Solutions, we collaborate daily to help our clients ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppTheme.white,
                                      fontSize: screenWidth * 0.0115)),
                          Text(
                              softWrap: true,
                              'increase their profits and minimize their risks.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppTheme.white,
                                      fontSize: screenWidth * 0.0115))
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Contact',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppTheme.white,
                            fontSize: screenWidth * 0.04)),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(Icons.mail, color: AppTheme.white),
                        SizedBox(width: screenWidth * 0.01),
                        Text('omar.ayman01@hotmail.com',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: AppTheme.white,
                                    fontSize: screenWidth * 0.0115)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone, color: AppTheme.white),
                        SizedBox(width: screenWidth * 0.01),
                        Text('01067627449',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: AppTheme.white,
                                    fontSize: screenWidth * 0.0115)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container(
            color: AppTheme.primary,
            height: screenHeight * 0.4,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("build/web/assets/assets/logo2.png",
                        width: screenWidth * 0.23, height: screenHeight * 0.13),
                    // Text('UBS',
                    //     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    //         color: AppTheme.white,
                    //         fontSize: screenWidth * 0.1)),
                    // SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: screenWidth * 0.6,
                      child: Column(
                        children: [
                          Text(
                              softWrap: true,
                              'At Ultimate Buissness Solutions, we collaborate daily ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppTheme.white,
                                      fontSize: screenWidth * 0.02)),
                          Text(
                              softWrap: true,
                              'to help our clients increase their profits',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppTheme.white,
                                      fontSize: screenWidth * 0.02)),
                          Text(
                              softWrap: true,
                              ' and minimize their risks.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppTheme.white,
                                      fontSize: screenWidth * 0.02))
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.03),
                    Text('Contact',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppTheme.white,
                            fontSize: screenWidth * 0.05)),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Icon(Icons.mail, color: AppTheme.white),
                        SizedBox(width: screenWidth * 0.01),
                        Text('omar.ayman01@hotmail.com',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: AppTheme.white,
                                    fontSize: screenWidth * 0.02)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone, color: AppTheme.white),
                        SizedBox(width: screenWidth * 0.01),
                        Text('01067627449',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: AppTheme.white,
                                    fontSize: screenWidth * 0.02)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
