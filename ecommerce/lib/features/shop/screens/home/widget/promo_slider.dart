import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widget/custom_shape/containers/circular_container.dart';
import 'package:ecommerce/common/widget/images/round_images.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });
final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
          ),
          items: banners.map((url)=>TRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: TSize.spaceBtwItem,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  height: 4,
                  width: 20,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value==i?TColors.primary:TColors.grey,
                )
            ],
          ),
        )
      ],
    );
  }
}
