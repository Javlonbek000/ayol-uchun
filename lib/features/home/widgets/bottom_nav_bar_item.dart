import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    super.key,
    required this.image,
    required this.title,
    required this.callback,
    required this.isSelected,
  });

  final String image, title;
  final VoidCallback callback;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      height: 44.h,
      child: GestureDetector(
        onTap: callback,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              image,
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(
                isSelected ? Color(0xFFF5365C) : Color(0xFF8898AA),
                BlendMode.srcIn,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Color(0xFF222222) : Color(0xFF8898AA),
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
