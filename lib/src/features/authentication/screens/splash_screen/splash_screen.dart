import 'package:flutter/material.dart';
import 'package:flutter_login_app/generated/assets.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
              top: 0,
              left: 0,
              child: Image(
                height: 100,
                width: 100,
                image: AssetImage(Assets.imagesSplashScreen1),
              )),
          Positioned(
              top: 100,
              left: zDefaultSizes,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    zAppName,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    zAppTagLine,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              )),
          const Positioned(
              bottom: 150,
              child: Image(
                height: 400,
                width: 400,
                image: AssetImage(Assets.imagesSplashScreenLaptopUsing),
              )),
           Positioned(
              bottom: 40,
              right: 20,
              child: Container(
                width: zSplashContainerSize,
                height: zSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:zPrimaryColor
                ),
              )),
        ],
      ),
    );
  }
}
