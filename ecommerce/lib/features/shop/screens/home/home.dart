import 'package:ecommerce/common/widget/custom_shape/containers/primary_header_container.dart';
import 'package:ecommerce/common/widget/custom_shape/containers/search_container.dart';
import 'package:ecommerce/common/widget/layouts/grid_layout.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce/features/shop/screens/home/widget/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widget/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widget/promo_slider.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  THomeAppBar(),
                  SizedBox(height: TSize.spaceBtwSection),

                  /// SearchBar
                  TSearchContainer(text: "Search in Store",),
                  SizedBox(height: TSize.spaceBtwSection),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.all(TSize.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSize.spaceBtwItem),
                        ///Category
                        THomeCategory()
                      ],
                    ),
                  ),
                  SizedBox(height: TSize.spaceBtwSection,),

                ],
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItem),

            ///Body
            Padding(
              padding:const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner2,
                      TImages.promoBanner1,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSection),
                  TSectionHeading(title: "Popular Products",onPress: () {Get.to(()=>const AllProducts());},),
                  const SizedBox(height: TSize.spaceBtwItem),

                  ///Popular products
                  TGridLayout(itemCount: 4,itemBuilder: (p0, p1) => const TProductCardVertical(),
                  )
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}

