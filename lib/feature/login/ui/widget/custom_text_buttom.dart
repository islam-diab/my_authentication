import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_authentication/core/theming/text_styles.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.zero,
        height: 55.h,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(1.00, -0.01),
            end: Alignment(-1, 0.01),
            colors: [Color(0xFF9C3FE4), Color(0xFFC65647)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
            child: Text(
          'Lodin',
          style: TextStyles.font18Medium,
        )),
      ),
    );
  }
}
