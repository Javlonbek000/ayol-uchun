import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTitleItem extends StatelessWidget {
  const AuthTitleItem({super.key, required this.desc});

  final String desc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 70.8.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Xush kelibsiz",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
