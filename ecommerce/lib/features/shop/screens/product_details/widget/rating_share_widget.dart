import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          const Icon(Icons.star,color: Colors.amber,size: 24,),
          const SizedBox(width: TSize.spaceBtwItem/2,),
          Text.rich(TextSpan(children: [
            TextSpan(text: '5.0',style: Theme.of(context).textTheme.bodyLarge),
            const TextSpan(text: '(199)'),
          ]))
        ],),
        ///Share button
        IconButton(onPressed: () {

        }, icon: const Icon(Icons.share,size: TSize.iconMd,))

      ],
    );
  }
}
