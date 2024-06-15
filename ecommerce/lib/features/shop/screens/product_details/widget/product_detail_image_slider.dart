import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/custom_shape/curved_edges/curve_edge_widget.dart';
import 'package:ecommerce/common/widget/icons/t_circular_icons.dart';
import 'package:ecommerce/common/widget/images/round_images.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return TCurveEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            ///main large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(
                      TSize.productImageRadious * 2),
                  child: Image(image: AssetImage(TImages.shoes)),
                )),

            ///Image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: TSize.spaceBtwItem,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) => TRoundedImage(
                      width: 80,
                      backgroundColor: dark ? TColors.dark : TColors.white,
                      padding: const EdgeInsets.all(TSize.sm),
                      border: Border.all(color: TColors.primary),
                      imageUrl: TImages.cloths),
                ),
              ),
            ),
            ///Appbar icons
            const TAppBar(showBackArrow: true,actions: [
              TCircularIcon(icon: CupertinoIcons.heart_fill,color: Colors.red,)
            ],)
          ],
        ),
      ),
    );
  }
}
