import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/common/widget/products/cart/coupen_widget.dart';
import 'package:ecommerce/common/widget/success_screen/success_screen.dart';
import 'package:ecommerce/features/shop/screens/cart/widget/cart_item.dart';
import 'package:ecommerce/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text("Order Review",
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              const TCartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(height: TSize.spaceBtwSection),

              ///Coupon  TextField
              const TCoupenCode(),
              const SizedBox(height: TSize.spaceBtwSection),

              ///BillingSection
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSize.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    ///Pricing section
                    TBillingAmountSection(),
                    SizedBox(height: TSize.spaceBtwItem),
                    Divider(),
                    SizedBox(height: TSize.spaceBtwItem),

                    ///Payment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSize.spaceBtwItem),
                    ///Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                image: TImages.payment,
                title: 'Payment Success!',
                subTitle: 'Your item will be shipped soon!',
                onPress: () => Get.offAll(() => const NavigationMenu()))),
            child: const Text('Checkout \$250.0')),
      ),
    );
  }
}
