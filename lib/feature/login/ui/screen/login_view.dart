import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/feature/login/ui/widget/container_info.dart';
import 'package:my_authentication/feature/login/ui/widget/top_scrern.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 932.h,
                ),
                const TopScreen(),
                Positioned(
                  top: 220,
                  left: 1,
                  right: 1,
                  child: Image.asset(
                    'assets/image/2.png',
                  ),
                ),
                const ContainerInfo(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
