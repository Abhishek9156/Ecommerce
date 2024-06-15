import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/brands/brand_card.dart';
import 'package:ecommerce/common/widget/layouts/grid_layout.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/brand/brand_products.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              const TSectionHeading(title: 'Brands',showActionButton: false,),
              const SizedBox(height: TSize.spaceBtwItem),
              TGridLayout(itemCount: 10,mainAxisExtent: 80, itemBuilder: (p0, p1) => TBrandCard(showBorder: true,onTap: () => Get.to(()=>const BrandProducts()),),)
            ],
          ),
        ),
      ),
    );
  }
}
