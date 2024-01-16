import 'package:flutter/material.dart';
import 'package:my_authentication/core/theming/text_styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Column(
        children: [
          Text(
            'Welcome Back!',
            style: TextStyles.font40SemiBold,
          ),
          Text(
            'welcome back we missed you',
            style: TextStyles.font14Medium,
          )
        ],
      ),
    );
  }
}
