import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/custom_shape/containers/primary_header_container.dart';
import 'package:ecommerce/common/widget/list_tile/settings_menu_tile.dart';
import 'package:ecommerce/common/widget/list_tile/user_profile_tile.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/shop/screens/cart/cart.dart';
import 'package:ecommerce/features/shop/screens/order/order.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                const SizedBox(
                  height: TSize.spaceBtwSection,
                ),

                ///user profile card
                TUserProfileTile(
                  onPress: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: TSize.spaceBtwSection,
                ),
              ],
            )),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),
                  TSettingMenuTile(
                    onTab: () => Get.to(() => const UserAddressScreen()),
                    icon: Icons.home_outlined,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                  ),
                   TSettingMenuTile(
                    onTab: () => Get.to(() => const CartScreen()),
                    icon: Icons.shopping_cart_outlined,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to checkout",
                  ),
                   TSettingMenuTile(
                     onTab: () => Get.to(()=>const OrderScreen()),
                    icon: Icons.shopping_bag_outlined,
                    title: "My Orders",
                    subTitle: "In-progress and Completed Orders",
                  ),
                   const TSettingMenuTile(
                    icon: Icons.attach_money_outlined,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                  ),
                   const TSettingMenuTile(
                    icon: Icons.discount_outlined,
                    title: "My Coupons",
                    subTitle: "List of all the discount coupons",
                  ),
                   const TSettingMenuTile(
                    icon: Icons.notification_important_outlined,
                    title: "Notification",
                    subTitle: "Set any kind of notification message",
                  ),
                   const TSettingMenuTile(
                    icon: Icons.security_outlined,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                  ),

                  ///App setting
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),
                  const TSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItem,
                  ),
                  const TSettingMenuTile(
                      icon: Icons.drive_folder_upload_outlined,
                      title: "Load Data",
                      subTitle: "Upload Data to your Cloud Firebase"),
                  TSettingMenuTile(
                    icon: Icons.location_on_outlined,
                    title: "Geolocation",
                    subTitle: "Set recommendation based on location",
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingMenuTile(
                    icon: Icons.safety_check_outlined,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingMenuTile(
                    icon: Icons.image_outlined,
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  ///Logout button
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Logout"),
                    ),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSection * .5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
