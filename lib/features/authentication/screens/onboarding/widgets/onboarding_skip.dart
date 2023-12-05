import 'package:abba_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:abba_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyDeviceUtils.getAppBarHeight() * 0.5,
      right: MySizes.spacingMedium,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text(
          'Lewati',
          style: TextStyle(
            color: MyColors.lighter,
          ),
        ),
      ),
    );
  }
}
