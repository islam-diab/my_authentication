import 'package:flutter/material.dart';
import 'package:my_authentication/core/theming/text_styles.dart';

class LineAndText extends StatelessWidget {
  const LineAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset('assets/image/line_left.png'),
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
    );
  }
}
