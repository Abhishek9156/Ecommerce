import 'package:ecommerce/common/widget/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSize.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItem),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Icons.check_circle : null,
                color: selectedAddress
                    ? dark
                        ? TColors.light
                        : TColors.dark
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Abhishek Kumar",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge!.apply(color: dark?TColors.white:TColors.black)),
              const SizedBox(height: TSize.sm/2),
               Text("+91 9156286808",style:Theme.of(context).textTheme.bodyMedium!.apply(color: dark?TColors.white:TColors.black),maxLines: 1,overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSize.sm/2),
               Text('85655 Timmy Coves, South LIan main road India',style:Theme.of(context).textTheme.bodyMedium!.apply(color: dark?TColors.white:TColors.black),softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
