import 'package:ayol_uchun/data/models/course/course_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCourseItem extends StatelessWidget {
  const HomeCourseItem({super.key, required this.course});

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 277.w,
          height: 281.h,
          child: Column(
            spacing: 4.h,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(16.r),
                    child: Image.network(
                      course.image,
                      width: double.infinity,
                      height: 174.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  course.status == null ? SizedBox():
                  Positioned(
                    top: 12.h,
                    right: 11.w,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 8.w),
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFFC9841).withValues(alpha: 0.9),
                        borderRadius: BorderRadiusGeometry.circular(20.r),
                      ),
                      child: Text(
                        course.status.toString(),
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                spacing: 4.w,
                children: [
                  SvgPicture.asset(
                    "assets/icons/star.svg",
                    width: 16.w,
                    height: 16.h,
                  ),
                  Text(
                    course.rating.toString(),
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                course.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                spacing: 4.w,
                children: [
                  SvgPicture.asset(
                    "assets/icons/user.svg",
                    width: 18.w,
                    height: 18.h,
                  ),
                  Text(
                    course.user,
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
        SizedBox(width: 20.w),
      ],
    );
  }
}
