import 'package:flutter/cupertino.dart';
import 'package:flutter_login_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

import '../features/authentication/models/splash_widget_model.dart';

class ZFadeInAnimation extends StatelessWidget {
  ZFadeInAnimation({
    Key? key,
    required this.durationInMs,
    required this.child,
    this.animate,
  }) : super(key: key);

  final controller = Get.put(SplashScreenController());
  final int durationInMs;
  final ZAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left:
        controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
        ),
      ),
    );
  }
}