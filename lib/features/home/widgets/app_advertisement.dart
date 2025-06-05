import 'package:ayol_uchun/features/auth/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAdvertisement extends StatelessWidget {
  const AppAdvertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16.r),
            child: Image.asset(
              "assets/images/woman.png",
              width: 343.w,
              height: 267.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 88.h,
            left: 12.w,
            child: AppButton(
              title: "Qo'shilish",
              titleColor: Color(0xFFE51E6B),
              size: Size(115.w, 49.h),
              borderRadius: 8.r,
              callback: () {},
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
