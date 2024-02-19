import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../../generated/assets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                padding: const EdgeInsets.all(zDefaultSizes),
                color: zOnBoardingPage1Color,
                child: Column(
                  /*
                * main axis alignment in column means vertical alignment
                * by default main axis size is max
                * and cross axis alignment set to center
                * which is horizontal alignment
                * */

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(Assets.onboardingOnboarding1),

                    /*
                    * column bellow will not be effected
                    * by main axis alignment space evenly
                    * */

                    Column(
                      children: [
                        Text(zOnBoardingTitle1,
                          style: Theme.of(context).textTheme.headlineLarge,),
                        Text(zOnBoardingSubTitle1,
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,),
                      ],
                    ),
                    Text(zOnBoardingCournter1),
                  ],
                ),
              ),
              Container(
                color: zOnBoardingPage2Color,
              ),
              Container(
                color: zOnBoardingPage3Color,
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
