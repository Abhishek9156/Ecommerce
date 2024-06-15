import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_review/product_reviews.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import 'widget/product_add_to_cart_widget.dart';
import 'widget/product_attribute.dart';
import 'widget/product_detail_image_slider.dart';
import 'widget/rating_share_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///1 product image slider
            const TProductImageSlider(),

            ///2 product detail
            Padding(
              padding: const EdgeInsets.only(
                  right: TSize.defaultSpace,
                  left: TSize.defaultSpace,
                  bottom: TSize.defaultSpace),
              child: Column(
                children: [
                  ///Rating & share
                  const TRatingAndShare(),

                  ///Price , title and stock and brand
                  const TProductMetaData(),

                  ///Attributes
                  const ProductAttribute(),
                  const SizedBox(height: TSize.spaceBtwSection),

                  ///Checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSize.spaceBtwSection),

                  ///description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSize.spaceBtwItem),

                  const ReadMoreText(
                    'This is product description which is used for showing product on data tahit is not important This is product description which is used for showing product on data tahit is not important ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///Reviews
                  const Divider(),
                  const SizedBox(height: TSize.spaceBtwItem),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        showActionButton: false,
                        title: 'Reviews(199)',
                        onPress: () {},
                      ),
                      IconButton(onPressed: () {
                        Get.to(()=>const ProductReviewsScreen());
                        
                      }, icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSection),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
