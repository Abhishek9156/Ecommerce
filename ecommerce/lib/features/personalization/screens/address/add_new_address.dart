import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text("Add new Address")),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_2_outlined),
                      labelText: 'Name')),
              const SizedBox(height: TSize.spaceBtwInputField),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone_android_outlined),
                      labelText: 'Phone Number')),
              const SizedBox(height: TSize.spaceBtwInputField),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.streetview_outlined),
                              labelText: 'Street'))),
                  const SizedBox(width: TSize.spaceBtwInputField),
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.map_pin_ellipse),
                              labelText: 'Postal Code'))),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputField),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.building_2_fill),
                              labelText: 'City'))),
                  const SizedBox(width: TSize.spaceBtwInputField),
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.local_activity_outlined),
                              labelText: 'State'))),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputField),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.globe),
                      labelText: 'Country')),
              const SizedBox(height: TSize.defaultSpace),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: const Text('Save')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
