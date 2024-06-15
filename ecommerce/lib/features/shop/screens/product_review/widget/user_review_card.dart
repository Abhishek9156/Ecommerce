import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/common/widget/products/ratings/rating_indicator.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImages.onBoardingImage1)),
                const SizedBox(width: TSize.spaceBtwItem),
                Text('Abhis', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(width: TSize.spaceBtwItem),

        ///Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSize.spaceBtwItem),
            Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItem),
        const ReadMoreText(
          'Innovacer is currently hiring Software Development interns who will design, develop, and maintain robust and scalable backend systems using Python, Django, MongoDB, PostgreSQL, Redis, and other relevant technologies.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: "show more",
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        const SizedBox(height: TSize.spaceBtwItem),

        ///Company Review

        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSize.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('01 Nov, 2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSize.spaceBtwItem),
                const ReadMoreText(
                  'Innovacer is currently hiring Software Development interns who will design, develop, and maintain robust and scalable backend systems using Python, Django, MongoDB, PostgreSQL, Redis, and other relevant technologies.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSize.spaceBtwSection),

      ],
    );
  }
}
