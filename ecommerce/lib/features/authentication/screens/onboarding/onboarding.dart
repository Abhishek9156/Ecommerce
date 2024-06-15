import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/OnBoardingDotNavigation.dart';
import 'widgets/OnBoardingNextButton.dart';
import 'widgets/OnBoardingPage.dart';
import 'widgets/OnBoardingSkip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [

          ///Horizontal scrollabel page
          PageView(
            controller: controller.pageControlller,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),

            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          /// Dot Navigator smoothPageIndicator
          const OnBoardingDotNavigation(),
          ///Circular Button
        const OnBoardingNextButton()
        ],
      ),
    );
  }
}




