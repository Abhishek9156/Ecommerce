import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit=BoxFit.contain,
    required this.image,
    this.isNetworkImage=false,
    this.overlayColor,
    this.backgroundColor,
    this.width=56,
    this.height=56,
    this.padding=TSize.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor),
    );
  }
}
