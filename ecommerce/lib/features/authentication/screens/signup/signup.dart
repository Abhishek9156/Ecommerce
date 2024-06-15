import 'package:ecommerce/common/widget/login_signup/form_divider.dart';
import 'package:ecommerce/common/widget/login_signup/social_button.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              ///Form
              const TSignupForm(),
              const SizedBox(
                height: TSize.spaceBtwItem,
              ),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: TSize.spaceBtwItem,
              ),
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
