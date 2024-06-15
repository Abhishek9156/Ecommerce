import 'package:ecommerce/common/widget/brands/brand_card.dart';
import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSize.md),
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItem),
      child: Column(
        children: [

          ///Brand with product count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSize.spaceBtwItem,),

          ///brand top 3 product images
          Row(
            children: images.map((image)=>brandTopProductImageWidget(image,context)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(child: TRoundedContainer(
      height: 100,
      margin: const EdgeInsets.only(right: TSize.sm),
      padding: const EdgeInsets.all(TSize.md),
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image),),
    ));
  }
}
