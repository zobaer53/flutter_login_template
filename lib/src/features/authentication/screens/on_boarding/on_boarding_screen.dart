import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter_login_app/src/features/authentication/screens/on_boarding/widget_on_boarding_screen.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../../generated/assets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // size of the device screen
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [

              //first screen
              OnBoardingPageWidget(
                model: OnBoardingModel(
                  image: Assets.onboardingOnboarding1,
              title: zOnBoardingTitle1,
              subTitle: zOnBoardingSubTitle1,
              counterText: zOnBoardingCournter1,
              bgColor: zOnBoardingPage1Color,
              height: size.height
              ),
              ),

              //second screen
              OnBoardingPageWidget(
                model: OnBoardingModel(
                    image: Assets.onboardingOnboarding2,
                    title: zOnBoardingTitle2,
                    subTitle: zOnBoardingSubTitle2,
                    counterText: zOnBoardingCournter2,
                    bgColor: zOnBoardingPage2Color,
                    height: size.height
                ),
              ),

              //third screen
              OnBoardingPageWidget(
                model: OnBoardingModel(
                    image: Assets.onboardingOnboarding3,
                    title: zOnBoardingTitle3,
                    subTitle: zOnBoardingSubTitle3,
                    counterText: zOnBoardingCournter3,
                    bgColor: zOnBoardingPage3Color,
                    height: size.height
                ),
              ),

            ],
          ),
          /* Positioned(
            top: 10,
            right: 20,
            child: Text('Skip', style: Theme.of(context).textTheme.displayMedium,)
        ),

        SizedBox(height: 30,),*/
        ],
      ),
    );
  }
}


