import 'package:flutter/material.dart';
import 'package:my_authentication/core/theming/text_styles.dart';

class SiginUpFromLogin extends StatelessWidget {
  const SiginUpFromLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}