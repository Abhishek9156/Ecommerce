import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/device/device_utility.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;

    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavbarHeight()+25,
        left: TSize.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageControlller,
          onDotClicked: controller.dotNavigateClick,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light : TColors.dark,dotHeight: 6),
        ));
  }
}
