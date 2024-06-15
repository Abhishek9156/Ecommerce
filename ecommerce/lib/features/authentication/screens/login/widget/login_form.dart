import 'package:ecommerce/features/authentication/screens/fogot_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:ecommerce/utills/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(vertical: TSize.spaceBtwItem),
          child: Column(
            children: [
              ///Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: TTexts.email),
              ),
              const SizedBox(height: TSize.spaceBtwInputField),

              ///Password
              TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.key_off_outlined),
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: TTexts.password),
              ),
              const SizedBox(height: TSize.spaceBtwInputField / 2),

              ///Remember me and forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(TTexts.rememberMe)
                    ],
                  ),

                  ///forgot password
                  TextButton(
                      onPressed: () =>Get.to(()=>const ForgetPasswordScreen()),
                      child: const Text(TTexts.forgotPassword)),
                ],
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              ///Sign In button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {Get.to(()=>const NavigationMenu());}, child: const Text(TTexts.signIn)),
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              ///Create Account button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(()=>const SignupScreen()), child: const Text(TTexts.createAccount)),
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),
            ],
          ),
        ));
  }
}
