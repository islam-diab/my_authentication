import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContianerwithOpacity extends StatelessWidget {
  const ContianerwithOpacity({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 447.w,
      height: 803.h,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(.2, -0.34),
          end: const Alignment(-0.94, 0.34),
          colors: [
            const Color.fromARGB(255, 95, 82, 105).withOpacity(0.15),
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
        child: child,
      ),
    );
  }
}
