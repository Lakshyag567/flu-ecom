import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:flu_ecom/utils/constants/sizes.dart';
import 'package:flu_ecom/common/widgets/appbar/appbar.dart';
import 'package:flu_ecom/utils/constants/image_strings.dart';
import 'package:flu_ecom/common/widgets/skeleton/shimmer_effect.dart';
import 'package:flu_ecom/common/widgets/images/circular_image.dart';
import 'package:flu_ecom/common/widgets/texts/section_heading.dart';
import 'package:flu_ecom/features/authentication/controllers/user/user_controller.dart';
import 'package:flu_ecom/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:flu_ecom/features/personalization/screens/profile/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --  Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      final networkImage = controller.user.value.profilePicture;
                      final image = networkImage.isNotEmpty ? networkImage : TImages.user;
                      if (controller.imageUploding.value) {
                        return ShimmerEffect(width: 80, height: 80, radius: 80);
                      } else {
                        return CircularImage(image: image, width: 80, height: 80, isNetworkImage: networkImage.isNotEmpty);
                      }
                    }),
                    TextButton(onPressed: controller.uploadUserProfilePicture, child: Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// -- Details
              SizedBox(height: TSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              ///Heading Profile Info
              SectionHeading(title: 'Profile Information'),
              SizedBox(height: TSizes.spaceBtwItems),

              ProfileMenu(title: 'Name', value: controller.user.value.fullName, onPressed: () => Get.to(ChangeName())),
              ProfileMenu(title: 'Username', value: controller.user.value.username),

              SizedBox(height: TSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              //Heading Personal Info
              SectionHeading(title: 'Personal Information'),
              SizedBox(height: TSizes.spaceBtwItems),

              ProfileMenu(title: 'User Id', value: controller.user.value.id, icon: Iconsax.copy),
              ProfileMenu(title: 'E-mail', value: controller.user.value.email),
              ProfileMenu(title: 'Phone Number', value: controller.user.value.phoneNumber),
              ProfileMenu(title: 'Gender', value: 'Male'),
              ProfileMenu(title: 'Date of Birth', value: '04 Sept, 2024'),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              Center(
                  child: TextButton(
                      onPressed: controller.deleteAccountWarningPopup,
                      child: Text('Close Account', style: TextStyle(color: Colors.red)))),
            ],
          ),
        ),
      ),
    );
  }
}
