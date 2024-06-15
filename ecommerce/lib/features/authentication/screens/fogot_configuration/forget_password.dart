import 'package:ecommerce/features/authentication/screens/fogot_configuration/reset_password.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(
              TTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: TSize.spaceBtwItem,
            ),
            Text(
              TTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: TSize.spaceBtwSection * 2,
            ),

            ///TextField
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: TSize.spaceBtwSection ,
            ),
            ///Submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>Get.off(()=>const ResetPasswordScreen()), child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}
