import 'package:ecommerce/common/widget/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widget/products/cart/cart_item.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_price.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton=true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          const SizedBox(height: TSize.spaceBtwSection),
      itemCount: 2,
      itemBuilder: (context, index) =>
          Column(
        children: [
          const TCartItem(),
          if(showAddRemoveButton) const SizedBox(height: TSize.spaceBtwItem),
          if(showAddRemoveButton) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width:70),
                /// Add Remove button Row with total price
                  TProductQuantityWithAddRemoveButton(),

                ],
              ),

              TProductPriceText(price: '256'),

            ],
          )
        ],
      ),
    );
  }
}
