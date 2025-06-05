import 'package:ayol_uchun/data/models/interview/interview_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppInterviewItem extends StatelessWidget {
  const AppInterviewItem({super.key, required this.interview});

  final InterviewModel interview;

  @override
  Widget build(BuildContext context) {
    String convertToHourMinute(int totalMinutes) {
      final hours = totalMinutes ~/ 60;
      final minutes = totalMinutes % 60;
      return "$hours soat $minutes minut";
    }

    return Row(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          width: 228.w,
          height: 251.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(16.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 16,
                color: Color(0xFF888B8F).withValues(alpha: 0.1),
              ),
            ],
          ),
          child: Column(
            children: [
              Image.network(
                interview.image,
                width: 228.w,
                height: 140.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
                child: Column(
                  spacing: 6.h,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/clock.svg",
                          width: 16.w,
                          height: 16.h,
                        ),
                        Text(
                          convertToHourMinute(interview.duration),
                          style: TextStyle(
                            color: Color(0xFF8898AA),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 204.w,
                      height: 40.h,
                      child: Text(
                        interview.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Color(0xFF172B4D),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 5.w,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/account.svg",
                          width: 18.w,
                          height: 18.h,
                        ),
                        Text(
                          interview.user,
                          style: TextStyle(
                            color: Color(0xFF8898AA),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20.w),
      ],
    );
  }
}
