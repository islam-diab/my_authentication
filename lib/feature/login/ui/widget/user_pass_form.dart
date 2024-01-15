import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/spaser.dart';
import 'package:my_authentication/core/theming/text_styles.dart';
import 'package:my_authentication/feature/login/ui/widget/text_form_field.dart';

class UserAndPasswoed extends StatelessWidget {
  const UserAndPasswoed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'User Name',
            style: TextStyles.font14Medium,
          ),
        ),
        verticalSpace(10),
        const AppTextFormField(
          hintText: 'Username',
          prefixIcon: Icon(Icons.person_outline),
        ),
        verticalSpace(30.h),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Passwored',
            style: TextStyles.font14Medium,
          ),
        ),
        verticalSpace(10.h),
        const AppTextFormField(
          hintText: 'passwored',
          prefixIcon: Icon(Icons.key_outlined),
        ),
      ],
    );
  }
}
