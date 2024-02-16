import 'package:flutter/material.dart';
import 'package:flutter_login_app/generated/assets.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';
import 'package:get/get.dart';
import '../../../../common_widget/fadein_animation_widget.dart';
import '../../../../constants/text_strings.dart';
import '../../models/splash_widget_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final splashScreenController = Get.put(SplashScreenController());
    splashScreenController.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ZFadeInAnimation(
              durationInMs: 1600,
              animate: ZAnimatePosition(
                topAfter: 20, topBefore: -30.0, leftBefore: -30, leftAfter: 20,
              ),
              child: const Image(
                  height:100 ,
                  width: 100,
                  image: AssetImage(Assets.splashScreenSplashScreenTop)),
            ),
            ZFadeInAnimation(
              durationInMs: 2000,
              animate: ZAnimatePosition(
                  topBefore: 150, topAfter: 150, leftAfter: zDefaultSizes, leftBefore: -80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(zAppName,
                      style: Theme
                          .of(context)
                          .textTheme
                          .displaySmall),
                  Text(zAppTagLine,
                      style: Theme
                          .of(context)
                          .textTheme
                          .displayMedium)
                ],
              ),
            ),
            ZFadeInAnimation(
              durationInMs: 2400,
              animate: ZAnimatePosition(bottomBefore: 0, bottomAfter: 150),
              child: const Image(
                  height: 400,
                  width: 400,
                  image: AssetImage(Assets.splashScreenSplashScreenLaptopUsing)),
            ),
            ZFadeInAnimation(
              durationInMs: 2400,
              animate: ZAnimatePosition(bottomBefore: 0,
                  bottomAfter: 60,
                  rightBefore: zDefaultSizes,
                  rightAfter: zDefaultSizes),
              child: Container(
                width: zSplashContainerSize,
                height: zSplashContainerSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: zPrimaryColor
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}