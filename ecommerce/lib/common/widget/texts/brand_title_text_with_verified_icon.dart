import 'package:ecommerce/common/widget/texts/brand_title_text.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/enums.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBrandTextTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTextTitleWithVerifiedIcon({
    super.key,
    required this.title,
     this.maxLines=1,
    this.textColor,
    this.iconColor=TColors.primary,
    this.textAlign=TextAlign.center,
     this.brandTextSize=TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTextTitle(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(width: TSize.xs),
        Icon(
          Icons.verified,
          color: iconColor,
          size: TSize.iconXs,
        )
      ],
    );
  }
}
