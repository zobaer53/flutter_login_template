import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/models/model_on_boarding.dart';
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

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(zDefaultSizes),
      color: model.bgColor,
      child: Column(
        /*
      * main axis alignment in column means vertical alignment
      * by default main axis size is max
      * and cross axis alignment set to center
      * which is horizontal alignment
      * */

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            model.image,
            height: model.height * 0.5,
          ), //50% of devices height

          /*
          * column bellow will not be effected
          * by main axis alignment space evenly
          * */

          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.counterText),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
