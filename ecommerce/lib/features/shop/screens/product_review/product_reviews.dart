
import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/products/ratings/rating_indicator.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widget/rating_progress_indicator.dart';
import 'widget/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and Reviews are verified and are form people who use the same type of device that your use'),
              const SizedBox(height: TSize.spaceBtwItem),

              ///Overall product rating
              const TOverAllRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text("12,611",style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSize.spaceBtwSection),

              ///user Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}



