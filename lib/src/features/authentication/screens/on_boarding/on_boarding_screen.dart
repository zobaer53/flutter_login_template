import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(color: zOnBoardingPage1Color,),
              Container(color: zOnBoardingPage2Color,),
              Container(color: zOnBoardingPage3Color,),
            ],
          ),
       /* Positioned(
            top: 10,
            right: 20,
            child: Text('Skip', style: Theme.of(context).textTheme.displayMedium,)
        ),

        SizedBox(height: 30,),*/



      ],),
    );
  }
}
