import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/common/widget/images/circular_image.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/enums.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///Icons
            Flexible(
              child: TCircularImage(
                image: TImages.cloths,
                backgroundColor: Colors.transparent,
                overlayColor: dark
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
                width: TSize.spaceBtwItem / 2),

            ///Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const TBrandTextTitleWithVerifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                    textColor: TColors.black,
                  ),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!.apply(color: TColors.darkerGrey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
