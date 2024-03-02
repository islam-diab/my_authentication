// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_authentication/core/theming/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final bool? isObscureText;
  final Function(String)? onChanged;
  // final Function(String?) validator;
  // final TextEditingController controller;

  const AppTextFormField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.isObscureText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      // validator: (value) {
      //   return validator(value);
      // },
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
      obscureText: isObscureText ?? false,
      style: TextStyles.font14Medium,
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.1),
        filled: true,
        isDense: true,
        hintStyle: TextStyles.font14Medium,
        hintText: hintText,
        prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFFEDEDED),
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
