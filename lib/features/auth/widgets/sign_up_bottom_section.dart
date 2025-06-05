import 'package:ayol_uchun/features/auth/widgets/app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBottomSection extends StatelessWidget {
  const SignUpBottomSection({super.key, required this.callback});

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 89.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              children: <TextSpan>[
                TextSpan(
                  text: "Tizimga kirish orqali siz ",
                  style: TextStyle(color: Color(0xFF8898AA)),
                ),
                TextSpan(
                  text: "foydalanish shartlari ",
                  recognizer: TapGestureRecognizer()..onTap,
                  style: TextStyle(color: Color(0xFFA41B6B)),
                ),
                TextSpan(
                  text: "va ",
                  style: TextStyle(color: Color(0xFF8898AA)),
                ),
                TextSpan(
                  text: "maxfiylik siyosatiga ",
                  recognizer: TapGestureRecognizer()..onTap,
                  style: TextStyle(color: Color(0xFFE13487)),
                ),
                TextSpan(
                  text: "roziligingizni tasdiqlaysiz",
                  style: TextStyle(color: Color(0xFF8898AA)),
                ),
              ],
            ),
          ),
          AppButton(
            title: "Davom etish",
            size: Size(335.w, 43.h),
            callback: callback,
            color: Color(0xFFF5365C),
          ),
        ],
      ),
    );
  }
}
