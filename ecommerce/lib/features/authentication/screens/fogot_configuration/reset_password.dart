import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            ///Image
            Image(
              image: const AssetImage(TImages.deliveredEmailIllusion),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSize.spaceBtwSection,
            ),

            /// Titlle & subtitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spaceBtwItem,
            ),

            Text(
              TTexts.ChangeYourPasswordSubTitle,
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
                onPressed: () {
                },
                child: const Text(TTexts.done),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwSection,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                },
                child: const Text(TTexts.resendEmail),
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
