import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButtonImage extends StatelessWidget {
  const AppButtonImage({
    super.key,
    required this.title,
    required this.size,
    required this.callback,
    required this.color,
    this.borderRadius = 4,
    required this.padding,
    required this.titleColor,
    this.iconColor = const Color(0xFF222222),
  });

  final String title;
  final Size size;
  final VoidCallback callback;
  final Color color;
  final double borderRadius;
  final EdgeInsets padding;
  final Color titleColor,iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        padding: padding,
        fixedSize: size,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRadius),
        ),
      ),
      child: Row(
        spacing: 5.w,
        children: [
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/arrow_right.svg",
            width: 20.w,
            height: 20.h,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
