import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/icons/t_circular_icons.dart';
import 'package:ecommerce/common/widget/layouts/grid_layout.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Icons.add,
             backgroundColor: THelperFunctions.isDarkMode(context) ?TColors.black:TColors.white,
             color: THelperFunctions.isDarkMode(context) ?TColors.white:TColors.black,
            onPressed: () {
              Get.to(const HomeScreen());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (p0, p1) => const TProductCardVertical(),)
            ],
          ),
        ),
      ),
    );
  }
}
