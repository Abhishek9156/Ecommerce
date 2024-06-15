import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/common/widget/images/circular_image.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_price.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/enums.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price and sale tag
        Row(
          children: [
            TRoundedContainer(
              radius: TSize.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSize.sm, vertical: TSize.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(
              width: TSize.spaceBtwItem,
            ),

            ///Price
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSize.spaceBtwItem,
            ),
            const TProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          width: TSize.spaceBtwItem / 1.5,
        ),

        ///title
        const TProductTitleText(title: "Green Nike shoes"),
        const SizedBox(
          width: TSize.spaceBtwItem / 1.5,
        ),

        ///stock status
        Row(
          children: [
            const TProductTitleText(title: "Status"),
            const SizedBox(width: TSize.spaceBtwItem),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(
          width: TSize.spaceBtwItem / 1.5,
        ),

        ///brand
        Row(
          children: [
            TCircularImage(
              image: TImages.cloths,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTextTitleWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
