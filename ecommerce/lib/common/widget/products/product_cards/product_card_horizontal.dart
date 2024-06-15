import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/common/widget/icons/t_circular_icons.dart';
import 'package:ecommerce/common/widget/images/round_images.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_price.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSize.productImageRadious),
          color: dark ? TColors.darkerGrey : TColors.lightContainer),
      child: Row(
        children: [
          ///Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSize.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                ///Thumbnail image
                const SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImage(
                        imageUrl: TImages.shoes, applyImageRadius: true)),

                ///Sale Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSize.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSize.sm, vertical: TSize.xs),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                ///Favourite icon button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: CupertinoIcons.heart_fill,
                      color: Colors.red,
                    ))
              ],
            ),
          ),

          ///Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSize.sm,left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                          title: 'Green Nike half sleeve shirt', smallSize: true),
                      SizedBox(height: TSize.defaultSpace / 2),
                      TBrandTextTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: TProductPriceText(price: '253.0')),

                      ///Add to cart
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSize.cardRadiousMd),
                              bottomRight: Radius.circular(
                                  TSize.productImageRadious),
                            )),
                        child: const SizedBox(
                          width: TSize.iconLg * 1.2,
                          height: TSize.iconLg * 1.2,
                          child: Center(
                              child: Icon(Icons.add, color: TColors.white)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
