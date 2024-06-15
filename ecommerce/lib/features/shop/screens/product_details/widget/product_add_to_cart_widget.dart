import 'package:ecommerce/common/widget/icons/t_circular_icons.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: TSize.defaultSpace / 2, horizontal: TSize.defaultSpace),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSize.cardRadiousLg),
          topRight: Radius.circular(TSize.cardRadiousLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                icon: CupertinoIcons.minus,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
              const SizedBox(width: TSize.spaceBtwItem),
              Text('2',style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: TSize.spaceBtwItem),
              const TCircularIcon(
                icon: CupertinoIcons.add,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
            ],
          ),

          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(TSize.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black)),
              child: const Text('Add to Cart'))

        ],
      ),
    );
  }
}
