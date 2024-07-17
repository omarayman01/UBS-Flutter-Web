// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: AppTheme.primary,
      height: screenHeight * 0.4,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('UBS',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppTheme.white, fontSize: screenWidth * 0.05)),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                width: screenWidth * 0.4,
                child: Column(
                  children: [
                    Text(
                        softWrap: true,
                        'At Ultimate Buissness Solutions, we collaborate daily to help our clients ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppTheme.white,
                            fontSize: screenWidth * 0.01)),
                    Text(
                        softWrap: true,
                        'increase their profits and minimize their risks.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppTheme.white,
                            fontSize: screenWidth * 0.01))
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
                      color: AppTheme.white, fontSize: screenWidth * 0.03)),
              SizedBox(height: screenHeight * 0.02),
              Row(
                children: [
                  Icon(Icons.mail, color: AppTheme.white),
                  SizedBox(width: screenWidth * 0.01),
                  Text('omar.ayman01@hotmail.com',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppTheme.white, fontSize: screenWidth * 0.01)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone, color: AppTheme.white),
                  SizedBox(width: screenWidth * 0.01),
                  Text('01067627449',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppTheme.white, fontSize: screenWidth * 0.01)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
