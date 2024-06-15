import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          onPressed: () =>OnBoardingController.instance.skipPage,
          child: const Text('Skip'),));
  }
}
