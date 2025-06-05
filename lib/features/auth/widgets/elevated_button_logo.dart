import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ElevatedButtonLogo extends StatelessWidget {
  const ElevatedButtonLogo({
    super.key,
    required this.image,
    required this.title,
    required this.callback,
  });

  final String image, title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 43.w),
        fixedSize: Size(163.w, 44.h),
        backgroundColor: Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            width: 20.w,
            height: 20.h,
          ),
          SizedBox(width: 5.w),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFF172B4D),
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
