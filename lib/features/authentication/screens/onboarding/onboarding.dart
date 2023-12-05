import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:abba_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:abba_app/features/authentication/screens/onboarding/widgets/onboarding_navigation_dots.dart';
import 'package:abba_app/utils/constants/image_strings.dart';
import 'package:abba_app/utils/constants/texts.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: MyTexts.onBoardingTitle1,
                subTitle: MyTexts.onBoardingSubTitle1,
                image: MyImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: MyTexts.onBoardingTitle2,
                subTitle: MyTexts.onBoardingSubTitle2,
                image: MyImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: MyTexts.onBoardingTitle3,
                subTitle: MyTexts.onBoardingSubTitle3,
                image: MyImages.onBoardingImage3,
              )
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigationDots(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
