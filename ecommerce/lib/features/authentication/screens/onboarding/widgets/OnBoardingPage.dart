import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    print(dark);
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
          ),
          Text(title,
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
            textAlign: TextAlign.center,),
          const SizedBox(height: TSize.spaceBtwItem,),
          Text(subTitle,
            style: Theme
                .of(context)
                .textTheme
                .bodyMedium!.apply(color: THelperFunctions.isDarkMode(context)?TColors.white:TColors.black),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
