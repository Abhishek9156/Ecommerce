import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/order/widget/order_list.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow:true,title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,)),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        ///Order
        child: TOrderListItem(),
      ),
    );
  }
}
