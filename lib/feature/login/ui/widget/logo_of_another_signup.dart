import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoOfAnotherSignUp extends StatelessWidget {
  const LogoOfAnotherSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
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
    );
  }
}
