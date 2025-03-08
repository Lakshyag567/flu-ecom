import 'package:flutter/material.dart';
import 'package:flu_ecom/utils/constants/sizes.dart';
import 'package:flu_ecom/utils/constants/text_strings.dart';
import 'package:flu_ecom/common/styles/spacing_styles.dart';
import 'package:flu_ecom/common/widgets/auth/form_divider.dart';
import 'package:flu_ecom/common/widgets/auth/social_buttons.dart';
import 'package:flu_ecom/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flu_ecom/features/authentication/screens/login/widgets/login_header.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title and Subtitle
              LoginHeader(),

              ///Form
              LoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
