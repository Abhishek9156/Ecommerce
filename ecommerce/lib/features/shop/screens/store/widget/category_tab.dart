import 'package:ecommerce/common/widget/brands/brand_show_case.dart';
import 'package:ecommerce/common/widget/layouts/grid_layout.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            ///Brands
            const TBrandShowCase(
              images: [TImages.shoes, TImages.cloths, TImages.promoBanner3],
            ),
            const TBrandShowCase(
              images: [TImages.shoes, TImages.cloths, TImages.promoBanner3],
            ),
            const SizedBox(height: TSize.spaceBtwItem,),

            ///Products
            TSectionHeading(
              title: "You might like",
              showActionButton: true,
              onPress: () {},
            ),
            const SizedBox(height: TSize.spaceBtwItem,),
            TGridLayout(itemCount: 4, itemBuilder: (p0, p1) =>const TProductCardVertical(),),
            const SizedBox(height: TSize.spaceBtwSection,),
          ],
        ),
      )],
    );
  }
}
