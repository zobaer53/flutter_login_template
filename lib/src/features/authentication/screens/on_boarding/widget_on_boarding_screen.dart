import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // size of the device screen

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
            height: size.height * 0.5,
          ), //50% of devices height

          /*
          * column bellow will not be effected
          * by main axis alignment space evenly
          * */

          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineLarge,),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.counterText),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}