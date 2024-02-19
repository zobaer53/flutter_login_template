
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class OnBoardingModel{
  final String image;
  final String title;
  final String subTitle;
  final String counterText;
  final Color bgColor;
  final double height;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.counterText,
    required this.bgColor,
    required this.height,
});
}