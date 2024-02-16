import 'package:flutter/material.dart';
import 'package:flutter_login_app/generated/assets.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter_login_app/src/utils/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;


  @override
  void initState() {
    sartAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
             AnimatedPositioned(
              duration: const Duration(milliseconds: zAnimateDuration),
                top: animate?10: -30,
                left: animate? 10 : -30,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: zOpacityDuration),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(Assets.imagesSplashScreen1),
                  ),
                )),
            AnimatedPositioned(
              duration: Duration(milliseconds: zAnimateDuration),
                top:  110,
                left: animate ? zDefaultSizes : -80,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: zOpacityDuration),
                  opacity: animate ? 1 : 0,
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
                  ),
                )),
            AnimatedPositioned(
              duration: Duration(milliseconds: zAnimateDuration),
                bottom: animate ? 150 : -80,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: zOpacityDuration),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    height: 400,
                    width: 400,
                    image: AssetImage(Assets.imagesSplashScreenLaptopUsing),
                  ),
                )),
             AnimatedPositioned(
               duration: Duration(milliseconds: zAnimateDuration),
                bottom: animate ? 60 :-30,
                right:  zDefaultSizes,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: zOpacityDuration),
                  opacity: animate ? 1 : 0,
                  child: Container(
                    width: zSplashContainerSize,
                    height: zSplashContainerSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color:zPrimaryColor
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Future sartAnimation() async {
    await Future.delayed(Duration(milliseconds: 500 ));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
