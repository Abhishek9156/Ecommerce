import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widget/term_and_condition_checkbox.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        ///First name and lastName
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Icons.person_2_outlined)),
                expands: false,
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwInputField,
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Icons.person_2_outlined)),
                expands: false,
              ),
            )
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        ///Username
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Icons.person_2_outlined)),
        ),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        ///Email
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Icons.email_outlined)),
        ),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        ///phone number
        TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNumber,
                prefixIcon: Icon(Icons.phone_android_outlined))),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        ///password
        TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.password,
                suffixIcon: Icon(Icons.key_off_outlined),
                prefixIcon: Icon(Icons.lock_outline))),
        const SizedBox(
          height: TSize.spaceBtwInputField,
        ),

        ///term & conditions checkbox
        const TTermAndConditionCheckBox(),
        const SizedBox(
          height: TSize.spaceBtwItem,
        ),

        ///sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => const VerifyEmailScreen());
            },
            child: const Text(TTexts.createAccount),
          ),
        )
      ],
    ));
  }
}
