import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: "Change",onPress: () {

        }),
        Text('Abhishek',style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSize.spaceBtwItem/2),

        Row(
           children: [
             const Icon(Icons.phone,color: Colors.grey,size: 16),
             const SizedBox(width: TSize.spaceBtwItem,),
             Text("91 9156286808",style: Theme.of(context).textTheme.bodyMedium),
           ],
        ),
        const SizedBox(height: TSize.spaceBtwItem/2),
        Row(
          children: [
            const Icon(Icons.location_on_outlined,color: Colors.grey,size: 16),
            const SizedBox(width: TSize.spaceBtwItem,),
            Text("12A, Yelahanka ,Banglore ",style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
          ],
        )
      ],
    );
  }
}
