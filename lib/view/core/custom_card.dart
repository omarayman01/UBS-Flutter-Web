import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/constants/routes.dart';
import 'package:ubs/view_model/locator/locator.dart';
import 'package:ubs/view_model/services/navigation_service.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.text, required this.imgUrl});
  final String text, imgUrl;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(Routes.jobFormRoute);
      },
      child: Card(
        // color: AppTheme.primary,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Lottie.asset(
                  imgUrl,
                  fit: BoxFit.cover,
                  height: screenHeight * 0.25,
                  width: screenWidth * 0.2,
                  options: LottieOptions(
                    enableMergePaths: true,
                    enableApplyingOpacityToLayers: true,
                  ),
                  frameRate: FrameRate.composition,
                  addRepaintBoundary: true,
                  filterQuality: FilterQuality.none,
                  backgroundLoading: true,
                  frameBuilder: (BuildContext context, Widget child,
                      LottieComposition? composition) {
                    if (composition == null) {
                      return const CircularProgressIndicator();
                    } else {
                      return child;
                    }
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: AppTheme.primary)),
            ),
          ],
        ),
      ),
    );
  }
}
