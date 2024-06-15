import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///variables
  final pageControlller = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///jump to the specific dot selected page
  void dotNavigateClick(index) {
    currentPageIndex.value = index;
    pageControlller.jumpTo(index);
  }

  ///update current index & jump to next page

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageControlller.jumpToPage(page);
    }
  }

  ///update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageControlller.jumpToPage(2);
  }
}
