import 'package:flutter/material.dart';
import 'package:flutter_login_app/generated/assets.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    RxBool animate = splashScreenController.animate;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
                  () =>
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: zAnimateDuration),
                      top: animate.value ? 10 : -30,
                      left: animate.value ? 10 : -30,
                      child: AnimatedOpacity(
                        duration: const Duration(
                            milliseconds: zOpacityDuration),
                        opacity: animate.value ? 1 : 0,
                        child: const Image(
                          height: 100,
                          width: 100,
                          image: AssetImage(Assets.imagesSplashScreen1),
                        ),
                      )),
            ),
            Obx(
                  () =>
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: zAnimateDuration),
                      top: 110,
                      left: animate.value ? zDefaultSizes : -80,
                      child: AnimatedOpacity(
                        duration: const Duration(
                            milliseconds: zOpacityDuration),
                        opacity: animate.value ? 1 : 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              zAppName,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headlineLarge,
                            ),
                            Text(
                              zAppTagLine,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headlineMedium,
                            ),
                          ],
                        ),
                      )),
            ),
            Obx(
                  () =>
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: zAnimateDuration),
                      bottom: animate.value ? 150 : -80,
                      child: AnimatedOpacity(
                        duration: const Duration(
                            milliseconds: zOpacityDuration),
                        opacity: animate.value ? 1 : 0,
                        child: const Image(
                          height: 400,
                          width: 400,
                          image: AssetImage(
                              Assets.imagesSplashScreenLaptopUsing),
                        ),
                      )),
            ),
            Obx(
                  () =>
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: zAnimateDuration),
                      bottom: animate.value ? 60 : -30,
                      right: zDefaultSizes,
                      child: AnimatedOpacity(
                        duration: const Duration(
                            milliseconds: zOpacityDuration),
                        opacity: animate.value ? 1 : 0,
                        child: Container(
                          width: zSplashContainerSize,
                          height: zSplashContainerSize,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: zPrimaryColor),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}