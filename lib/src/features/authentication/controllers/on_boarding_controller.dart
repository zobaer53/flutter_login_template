import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../../generated/assets.dart';
import '../../../constants/text_strings.dart';
import '../../../utils/theme/colors.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/widget_on_boarding_screen.dart';

class OnBoardingController extends GetxController{
  RxInt currentPage = 0.obs;
  final liquidController = LiquidController();

  final pages = [
    //first screen
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: Assets.onboardingOnboarding1,
        title: zOnBoardingTitle1,
        subTitle: zOnBoardingSubTitle1,
        counterText: zOnBoardingCournter1,
        bgColor: zOnBoardingPage1Color,),
    ),

    //second screen
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: Assets.onboardingOnboarding2,
          title: zOnBoardingTitle2,
          subTitle: zOnBoardingSubTitle2,
          counterText: zOnBoardingCournter2,
          bgColor: zOnBoardingPage2Color),
    ),

    //third screen
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: Assets.onboardingOnboarding3,
          title: zOnBoardingTitle3,
          subTitle: zOnBoardingSubTitle3,
          counterText: zOnBoardingCournter3,
          bgColor: zOnBoardingPage3Color),
    ),
  ];

  onPageChange(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
  skip() => liquidController.jumpToPage(page:2);

  animateToNextSlide(){
    int nextPage = liquidController.currentPage + 1;
    liquidController.animateToPage(page: nextPage);
  }
}