import 'package:ecommerce/common/widget/images/round_images.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.onBoardingImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)?TColors.primary:TColors.light,

        ),
        const SizedBox(width: TSize.spaceBtwItem),
        ///Title price and size

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTextTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: TProductTitleText(title: 'Black Sports shoes',maxLines: 1)),
              ///Attribute
              Text.rich(TextSpan(
                  children: [
                    TextSpan(text: 'Color ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ',style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08',style: Theme.of(context).textTheme.bodyLarge),
                  ]
              ))
            ],
          ),
        )
      ],
    );
  }
}
