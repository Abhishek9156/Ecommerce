import 'package:ecommerce/common/styles/TSpacingStyle.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPress});

  final String image,title,subTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyel.paddingWithAppBarHeight*2,
          child: Column(children: [

            ///Image
            Image(
              image: AssetImage(image),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSize.spaceBtwSection,
            ),

            /// Titlle & subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spaceBtwItem,
            ),

            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: TSize.spaceBtwSection,
            ),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPress,
                child: const Text(TTexts.tContinue),
              ),
            ),

          ],),
        ),
      ),
    );
  }
}
