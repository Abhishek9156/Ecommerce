import 'package:ecommerce/common/widget/images/circular_image.dart';
import 'package:ecommerce/utills/constants/colors.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:flutter/material.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, this.onPress,
  });

  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.cloths,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Abhishek",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        "Hajipur Nera",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: onPress,
        icon: const Icon(Icons.edit_note_outlined,color: TColors.white,),
      ),
    );
  }
}
