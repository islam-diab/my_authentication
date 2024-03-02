import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/spase.dart';
import 'package:my_authentication/core/theming/text_styles.dart';
import 'package:my_authentication/core/widget/auth/text_form_field.dart';

import '../../../../core/widget/auth/custom_text_bottom.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  String? emailAddress, password;
  signUp() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      if (credential.user != null) {
        // ignore: use_build_context_synchronously
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Email Address',
            style: TextStyles.font14Medium,
          ),
        ),
        verticalSpace(10.h),
        AppTextFormField(
          onChanged: (p0) => emailAddress = p0,
          hintText: 'Email Address',
          prefixIcon: const Icon(Icons.email_outlined),
        ),
        verticalSpace(20.h),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'User Name',
            style: TextStyles.font14Medium,
          ),
        ),
        verticalSpace(10.h),
        AppTextFormField(
          onChanged: (_) {},
          hintText: 'Username',
          prefixIcon: const Icon(Icons.person_outline),
        ),
        verticalSpace(20.h),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Password',
            style: TextStyles.font14Medium,
          ),
        ),
        verticalSpace(10.h),
        AppTextFormField(
          onChanged: (p0) => password = p0,
          isObscureText: true,
          hintText: 'password',
          prefixIcon: const Icon(Icons.key_outlined),
        ),
        verticalSpace(25.h),
        CustomTextBottom(
          text: 'Signup',
          onTap: signUp,
        ),
      ],
    );
  }
}
