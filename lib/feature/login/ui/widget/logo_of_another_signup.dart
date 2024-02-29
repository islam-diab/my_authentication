import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/spase.dart';
import 'package:my_authentication/core/theming/text_styles.dart';

class LogoOfAnotherSignUp extends StatelessWidget {
  const LogoOfAnotherSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/image/line_left.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Or continue with',
                  style: TextStyles.font14Medium,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/image/line_right.png',
                ),
              ),
            ],
          ),
          verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60.w,
                  child: Image.asset('assets/image/google.png'),
                ),
                SizedBox(
                  width: 60.w,
                  child: Image.asset('assets/image/facebook.png'),
                ),
              ],
            ),
          ),
          verticalSpace(20),
          Text(
            '\n Already have an account yet? ',
            style: TextStyles.font14Medium,
          ),
          Text(
            'Sign Up',
            style: TextStyles.font14Medium
                .copyWith(color: const Color(0xffB14A96)),
          ),
        ],
      ),
    );
  }
}
