import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/device/device_utility.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);

    return Positioned(
        right: TSize.defaultSpace,
        bottom: TDeviceUtils.getBottomNavbarHeight(),
        child: ElevatedButton(onPressed: () =>OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:  dark ? TColors.primary:TColors.black),
          child: const Icon(Icons.arrow_forward_ios_outlined),));
  }
}
