import 'package:ayol_uchun/features/auth/widgets/elevated_button_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Divider(color: Color(0xFFFFFFFF)),
          Text(
            "Quyidagilar orqali kirish",
            style: TextStyle(
              color: Color(0xFF8898AA),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButtonLogo(
                image: "assets/icons/google_logo.svg",
                title: "Google",
                callback: () {},
              ),
              ElevatedButtonLogo(
                image: "assets/icons/apple_logo.svg",
                title: "Apple",
                callback: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
