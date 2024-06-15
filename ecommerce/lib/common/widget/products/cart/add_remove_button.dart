import 'package:ecommerce/common/widget/icons/t_circular_icons.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
            icon: Icons.remove,
            width: 32,
            height: 32,
            size: TSize.md,
            color: THelperFunctions.isDarkMode(context)
                ? TColors.white
                : TColors.black,
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.darkerGrey
                : TColors.light),
        const SizedBox(width: TSize.spaceBtwItem),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSize.spaceBtwItem),
        const TCircularIcon(
            icon: Icons.add,
            width: 32,
            height: 32,
            size: TSize.md,
            color: TColors.white,
            backgroundColor: TColors.primary),
      ],
    );
  }
}
