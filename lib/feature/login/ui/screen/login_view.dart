import 'package:flutter/material.dart';
import 'package:my_authentication/feature/login/ui/widget/container_info.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Image.asset('assets/image/login.png'),
              Stack(
                children: [
                  Image.asset(
                    'assets/image/2.png',
                  ),
                  const ContainerInfo(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
