import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/theming/color.dart';
import 'package:my_authentication/core/theming/text_styles.dart';

class CustomTextBottom extends StatelessWidget {
  const CustomTextBottom({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.zero,
        height: 55.h,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(1.00, -0.01),
            end: Alignment(-1, 0.01),
            colors: [Color(0xFF9C3FE4), AppColor.primaryColor],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
            child: Text(
          'Login',
          style: TextStyles.font18Medium,
        )),
      ),
    );
  }
}
