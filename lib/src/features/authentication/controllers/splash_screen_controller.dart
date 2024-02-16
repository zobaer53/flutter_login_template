import 'package:flutter_login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  // we cam find this controller with get.find
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500 ));

      animate.value = true;

    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(const WelcomeScreen());
    //Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}