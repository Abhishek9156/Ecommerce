import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu({
    super.key,
    this.icon=Icons.arrow_forward_ios,
    required this.onPressed,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwItem / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
                child: Text(title,
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis)),
            Expanded(
              flex: 5,
                child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium!.apply(color: THelperFunctions.isDarkMode(context) ?TColors.white:TColors.black),
              overflow: TextOverflow.ellipsis,
            )),
            Expanded(
                child: Icon(
              icon,
              size: 18,
            ))
          ],
        ),
      ),
    );
  }
}
