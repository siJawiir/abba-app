import 'package:abba_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigationDots extends StatelessWidget {
  const OnBoardingNavigationDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MyHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      left: MySizes.spacingMedium,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? MyColors.light : MyColors.primary,
            dotHeight: 6),
      ),
    );
  }
}
