import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/extensions.dart';
import 'package:my_authentication/core/helper/spase.dart';
import 'package:my_authentication/core/theming/text_styles.dart';
import 'package:my_authentication/feature/login/ui/widget/user_pass_form.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widget/auth/container_with_opacity.dart';
import '../../../../core/widget/auth/logo_of_another_signup.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWithOpacity(
      child: Column(
        children: [
          Text(
            'Welcome Back!',
            style: TextStyles.font40SemiBold,
          ),
          Text(
            'welcome back we missed you',
            style: TextStyles.font14Medium,
          ),
          verticalSpace(30.h),
          const UserAndPassword(),
          verticalSpace(30.h),
          LogoOfAnotherSignUp(
            text: 'Sing Up',
            onPressed: () => context.pushNamed(Routes.signUpScreen),
          ),
        ],
      ),
    );
  }
}
