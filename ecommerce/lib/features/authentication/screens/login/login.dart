import 'package:ecommerce/common/styles/TSpacingStyle.dart';
import 'package:ecommerce/common/widget/login_signup/form_divider.dart';
import 'package:ecommerce/common/widget/login_signup/social_button.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:ecommerce/utills/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/login_form.dart';
import 'widget/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyel.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo title and sub-title
              const TLoginHeader(),

              ///Form
              const TLoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              ///Footer
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
