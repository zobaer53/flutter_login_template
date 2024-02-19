import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:flutter_login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter_login_app/src/features/authentication/screens/on_boarding/widget_on_boarding_screen.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../generated/assets.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // image and texts
          LiquidSwipe(
            onPageChangeCallback: controller.onPageChange,
            liquidController: controller.liquidController,
            pages: controller.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),

          // next button
          Positioned(
              bottom: 60,
              child: OutlinedButton(
                onPressed: () => controller.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20)),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(color: zDarkColor, shape: BoxShape.circle),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              )),

          //skip button
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                child: const Text('Skip', style: TextStyle(color: Colors.grey)),
                onPressed: () => controller.skip(),
              )),

          //indicator
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.currentPage.value,
                  count: 3,
                  effect: const WormEffect(
                      activeDotColor: Color(0xff272727), dotHeight: 5),
                )),
          )
        ],
      ),
    );
  }
}
