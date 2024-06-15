import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/images/round_images.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_card_horizontal.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sport shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                  imageUrl: TImages.promoBanner1,
                  width: double.infinity,
                  applyImageRadius: true),
              const SizedBox(height: TSize.spaceBtwSection),

              ///Sub category
              Column(
                children: [
                  TSectionHeading(
                    title: 'Sports Shirts',
                    onPress: () {},
                  ),
                  const SizedBox(height: TSize.spaceBtwItem / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: TSize.spaceBtwItem,
                            ),
                        itemBuilder: (context, index) =>
                            const TProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
