import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(()=>const AddNewAddressScreen()),
        child: const Icon(Icons.add,color: TColors.white,),

      ),
          appBar: TAppBar(
        showBackArrow: true,
      title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall),
    ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
             TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false)
            ],
          ),
        ),
      ),
    );
  }
}
