import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPress: () {},
        ),
        const SizedBox(height: TSize.spaceBtwItem / 2),
        Row(
          children: [
            TRoundedContainer(
              height: 35,
              width: 60,
              backgroundColor: dark?TColors.light:TColors.white,
              padding: const EdgeInsets.all(TSize.sm),
              child: const Image(image: AssetImage(TImages.google),fit:BoxFit.contain,),
            ),
            const SizedBox(width: TSize.spaceBtwItem/2),
            Text('GPay',style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
