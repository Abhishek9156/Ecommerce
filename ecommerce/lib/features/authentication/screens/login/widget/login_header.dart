import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key, });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
        Text(TTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSize.sm),
        Text(TTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
