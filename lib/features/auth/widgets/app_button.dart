import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.size,
    required this.callback,
    required this.color,
    this.borderRadius = 4,
    this.titleColor = const Color(0xFFFFFFFF)
  });

  final String title;
  final Size size;
  final VoidCallback callback;
  final Color color, titleColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        fixedSize: size,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRadius),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
