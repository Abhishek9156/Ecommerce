import 'package:ecommerce/common/widget/appbar/appbar.dart';
import 'package:ecommerce/common/widget/images/circular_image.dart';
import 'package:ecommerce/common/widget/texts/section_heading.dart';
import 'package:ecommerce/utills/constants/image_strings.dart';
import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widget/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.deliveredEmailIllusion,
                        width: 80,
                        height: 80),
                    TextButton(
                        onPressed: () {}, child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              ///Detail
              const SizedBox(height: TSize.spaceBtwItem / 2),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItem),
              const TSectionHeading(
                  title: "Profile Information", showActionButton: false),
              const SizedBox(height: TSize.spaceBtwItem),

              TProfileMenu(
                title: "Name",
                value: "Abhishek",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Username",
                value: "abhishek915628@gmail.com",
                onPressed: () {},
              ),

              const SizedBox(height: TSize.spaceBtwItem),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItem),

              ///Heading personal Information
              const TSectionHeading(
                  title: "Personal Information", showActionButton: false),
              const SizedBox(height: TSize.spaceBtwItem),
              TProfileMenu(
                title: "User ID",
                value: "452563",
                onPressed: () {},
                icon: Icons.copy_all_outlined,
              ),
              TProfileMenu(
                title: "E-mail",
                value: "abhisehek9156@gmail.com",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Phone Number",
                value: "9156286808",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Gender",
                value: "Male",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Date of Birth",
                value: "12 Aug, 2000",
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(height: TSize.spaceBtwItem),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Close Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
