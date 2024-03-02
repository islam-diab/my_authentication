import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/extensions.dart';
import 'package:my_authentication/core/helper/spase.dart';
import 'package:my_authentication/core/theming/text_styles.dart';
import 'package:my_authentication/feature/signup/ui/widget/signup_form.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widget/auth/container_with_opacity.dart';
import '../../../../core/widget/auth/logo_of_another_signup.dart';

class ContainerInfoForSignup extends StatelessWidget {
  const ContainerInfoForSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWithOpacity(
      child: Column(
        children: [
          Text(
            'Get Started Free',
            style: TextStyles.font40SemiBold,
          ),
          Text(
            ' Free Forever. No Credit Card Needed',
            style: TextStyles.font14Medium,
          ),
          verticalSpace(30.h),
          const SignupForm(),
          verticalSpace(30.h),
          LogoOfAnotherSignUp(
            text: 'Login',
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
          ),
        ],
      ),
    );
  }
}
