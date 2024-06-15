import 'package:ecommerce/features/personalization/screens/settings/settings.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/features/shop/screens/store/store.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/shop/screens/wishlist/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height:80,
          elevation: 0,
          selectedIndex: controller.selectIndex.value,
          backgroundColor: dark ?TColors.black:TColors.white,
          indicatorColor:  dark ?TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          onDestinationSelected: (index)=>controller.selectIndex.value=index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined,),label: 'Home',),
            NavigationDestination(icon: Icon(Icons.store_outlined,),label: 'Store',),
            NavigationDestination(icon: Icon(CupertinoIcons.heart,),label: 'Wishlist',),
            NavigationDestination(icon: Icon(CupertinoIcons.person,),label: 'Profile',),

          ],
        ),
      ),
      body: Obx(()=>controller.screen[controller.selectIndex.value]),
    );
  }


}
class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;


  final screen = [const HomeScreen(),const StoreScreen(),const FavouriteScreen(),const SettingScreen()];
}