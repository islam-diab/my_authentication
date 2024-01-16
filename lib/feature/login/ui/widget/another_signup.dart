import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/spaser.dart';
import 'package:my_authentication/feature/login/ui/widget/line_and_text.dart';
import 'package:my_authentication/feature/login/ui/widget/logo_of_another_signup.dart';

class AnotherSignup extends StatelessWidget {
  const AnotherSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LineAndText(),
        verticalSpace(20.h),
        const LogoOfAnotherSignUp(),
      ],
    );
  }
}
