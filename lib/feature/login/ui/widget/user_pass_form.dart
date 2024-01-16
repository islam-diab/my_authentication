import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/helper/spaser.dart';
import 'package:my_authentication/core/theming/text_styles.dart';
import 'package:my_authentication/feature/login/ui/widget/text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_authentication/feature/test_fire_base/test_fire_base.dart';

import 'custom_text_buttom.dart';

class UserAndPasswoed extends StatefulWidget {
  const UserAndPasswoed({super.key});

  @override
  State<UserAndPasswoed> createState() => _UserAndPasswoedState();
}

class _UserAndPasswoedState extends State<UserAndPasswoed> {
  String? emailAddress, password;
  login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      if (credential.user != null) {
        // ignore: use_build_context_synchronously
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const TestFireBase()),
          (Route<dynamic> route) => false,
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
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
            'User Name',
            style: TextStyles.font14Medium,
          ),
        ),
        verticalSpace(10.h),
         AppTextFormField(
          onChanged: (p0) => emailAddress=p0,
          hintText: 'Username',
          prefixIcon: const Icon(Icons.person_outline),
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
         AppTextFormField(
          onChanged: (p0) => password = p0,
          isObscureText: true,
          hintText: 'passwored',
          prefixIcon: const Icon(Icons.key_outlined),
        ),
        verticalSpace(10.h),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password?',
            style: TextStyles.font14Medium,
          ),
        ),
        verticalSpace(30.h),
           CustomTextButtom(
            onTap: login,
           ),
      ],
    );
  }
}
