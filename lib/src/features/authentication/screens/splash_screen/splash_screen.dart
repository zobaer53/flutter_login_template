import 'package:flutter/material.dart';
import 'package:flutter_login_app/generated/assets.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage(Assets.imagesSplashScreenLaptopUsing),
              )
          ),
          Positioned(
              top: 80,
              left: zDefaultSizes,
              child: Column(children: [
                Text(zAppName, style: Theme.of(context).textTheme.headlineLarge,),
                Text(zAppTagLine, style: Theme.of(context).textTheme.headlineMedium,),
              ],)
          ),
        ],
      ),
    );
  }
}
