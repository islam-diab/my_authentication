import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/spaser.dart';
import 'package:my_authentication/core/theming/text_styles.dart';
import 'package:my_authentication/feature/login/ui/widget/another_signup.dart';
import 'package:my_authentication/feature/login/ui/widget/contianer_with_opacity.dart';
import 'package:my_authentication/feature/login/ui/widget/custom_text_buttom.dart';
import 'package:my_authentication/feature/login/ui/widget/signup_from_login.dart';
import 'package:my_authentication/feature/login/ui/widget/user_pass_form.dart';

import 'welcome_text.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 252.h,
      left: 1,
      right: 1,
      child: ContianerwithOpacity(
        child: Column(
          children: [
            const WelcomeText(),
            verticalSpace(30.h),
            const UserAndPasswoed(),
            verticalSpace(30.h),
            const CustomTextButtom(),
            verticalSpace(30.h),
            const AnotherSignup(),
            verticalSpace(20.h),
            const SiginUpFromLogin()
          ],
        ),
      ),
    );
  }
}
