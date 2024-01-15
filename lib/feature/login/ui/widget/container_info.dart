import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/spaser.dart';
import 'package:my_authentication/feature/login/ui/widget/user_pass_form.dart';

import 'welcome_text.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 250,
      left: 1,
      right: 1,
      child: Container(
        width: 447.w,
        height: 803.h,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(.2, -0.34),
            end: const Alignment(-0.94, 0.34),
            colors: [
              const Color(0xFFB379DF).withOpacity(0.2),
              const Color(0x14CC5854).withOpacity(0.2),
              const Color(0xFFB379DF).withOpacity(0.2)
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(59),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const WelcomeText(),
              verticalSpace(30.h),
              const UserAndPasswoed(),
            ],
          ),
        ),
      ),
    );
  }
}
