import 'package:flutter/material.dart';
import 'package:my_authentication/feature/signup/ui/widget/container_info_signup.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Image.asset('assets/image/logo2.png'),
              Stack(
                children: [
                  Image.asset(
                    'assets/image/2.png',
                  ),
                  const ContainerInfoForSignup(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
