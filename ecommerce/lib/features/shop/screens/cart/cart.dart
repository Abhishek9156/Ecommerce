import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title:
              Text("Cart", style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),

        ///Cart Items
        child: TCartItems(),
      ),
      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const CheckoutScreen());
            },
            child: const Text('Checkout \$250.0')),
      ),
    );
  }
}
