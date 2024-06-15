import 'package:ecommerce/common/widget/chips/choice_chips.dart';
import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_price.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected attribute pricing and description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSize.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(title: "Variation", showActionButton: false),
                  const SizedBox(
                    width: TSize.spaceBtwItem,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: "Price : ", smallSize: true),

                          ///Actual price

                          Text('\$25',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(
                            width: TSize.spaceBtwItem,
                          ),

                          ///Sale Tag
                          const TProductPriceText(price: '20'),
                        ],
                      ),

                      ///Stock
                      Row(
                        children: [
                          const TProductTitleText(
                            title: "Stock : ",
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

              ///Variation Description
              const TProductTitleText(
                title:
                    'This is the description of the product and it can go uptp max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: TSize.spaceBtwItem,
        ),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors",showActionButton: false,),
            const SizedBox(
              height: TSize.spaceBtwItem / 2,
            ),
           Wrap(
             spacing: 4,
             children: [
             TChoiceChips(text: 'Green',selected: true,onSelected: (p0) {}),
             TChoiceChips(text: 'Red',selected: false,onSelected: (p0) {},),
             TChoiceChips(text: 'Yellow',selected: false,onSelected: (p0) {}),

           ],)
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItem
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size",showActionButton: false),
            const SizedBox(
              height: TSize.spaceBtwItem / 2,
            ),
           Wrap(
             spacing: 8,
             children: [
             TChoiceChips(text: 'EU 34',selected: true,onSelected: (p0) {}),
             TChoiceChips(text: 'EU 36',selected: false,onSelected: (p0) {},),
             TChoiceChips(text: 'EU 38',selected: false,onSelected: (p0) {}),

           ],)
          ],
        )

      ],
    );
  }
}

