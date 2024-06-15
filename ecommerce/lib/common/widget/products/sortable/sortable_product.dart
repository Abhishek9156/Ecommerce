import 'package:ecommerce/common/widget/layouts/grid_layout.dart';
import 'package:ecommerce/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.filter_list_outlined)),
            onChanged: (value) {},
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) => DropdownMenuItem(value: option, child: Text(option)))
                .toList()),
        const SizedBox(height: TSize.spaceBtwSection),
        TGridLayout(itemCount: 8, itemBuilder: (p0, p1) => const TProductCardVertical())
      ],
    );
  }
}
