import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/appbar/tabbar.dart';
import 'package:ecommerce/common/widget/custom_shape/containers/search_container.dart';
import 'package:ecommerce/common/widget/layouts/grid_layout.dart';
import 'package:ecommerce/common/widget/products/cart/cart_menu_cart.dart';
import 'package:ecommerce/common/widget/brands/brand_card.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/brand/all_brands.dart';
import 'package:ecommerce/features/shop/screens/store/widget/category_tab.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
          actions: const [
            TCartCounterIcon(),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: dark ? TColors.black : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                        padding: const EdgeInsets.all(TSize.defaultSpace),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            const SizedBox(height: TSize.spaceBtwItem),
                            const TSearchContainer(
                              text: "Search in Store",
                              showBorder: true,
                              showBackground: false,
                              padding: EdgeInsets.zero,
                            ),
                            const SizedBox(height: TSize.spaceBtwSection),

                            ///Featured Brand
                            TSectionHeading(
                              title: "Featured Brands",
                              textColor: TColors.black,
                              onPress: () {
                                Get.to(()=>const AllBrandsScreen());
                              },
                            ),
                            const SizedBox(height: TSize.spaceBtwItem / 1.5),
                            TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (p0, p1) {
                                return const TBrandCard(
                                  showBorder: true,
                                );
                              },
                            )
                          ],
                        )),

                    ///Tabs
                    bottom: const TTabBar(
                      tabs: [
                        Tab(child: Text("Sports")),
                        Tab(child: Text("Furniture")),
                        Tab(child: Text("Electronics")),
                        Tab(child: Text("Clothes")),
                        Tab(child: Text("Cosmetics")),
                      ],
                    ))
              ];
            },
            body: const TabBarView(

              children: [
TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),


              ],
            )),
      ),
    );
  }
}

