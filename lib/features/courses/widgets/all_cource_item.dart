import 'package:ayol_uchun/data/models/course/course_model.dart';
import 'package:ayol_uchun/features/common/widgets/buttons/app_button_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AllCourseItem extends StatelessWidget {
  const AllCourseItem({super.key, required this.course});

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          width: double.infinity,
          height: 387.h,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadiusGeometry.circular(6.r),
          ),
          child: Column(
            spacing: 4.h,
            children: [
              Stack(
                children: [
                  Image.network(
                    course.image,
                    width: double.infinity,
                    height: 194.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8.h,
                    left: 8.w,
                    child: Container(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      width: 129.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadiusGeometry.circular(4.r),
                      ),
                      child: Row(
                        spacing: 3.w,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            width: 14.w,
                            height: 14.h,
                          ),
                          Text(
                            course.rating.toString(),
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            width: 4.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5365C),
                              borderRadius: BorderRadiusGeometry.circular(2.r),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              course.category,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF525F7F),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    right: 8.w,
                    child: course.status == null
                        ? Text('')
                        : Container(
                            padding: EdgeInsetsGeometry.symmetric(
                              horizontal: 8.w,
                              vertical: 4.h,
                            ),
                            height: 24.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFFC9841).withValues(alpha: 0.9),
                              borderRadius: BorderRadiusGeometry.circular(4.r),
                            ),
                            child: Text(
                              course.status.toString(),
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4.h),
                    Text(
                      course.user,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF172B4D),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      spacing: 4.w,
                      children: [
                        Container(
                          width: 4.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5365C),
                            borderRadius: BorderRadiusGeometry.circular(8.r),
                          ),
                        ),
                        Text(
                          course.status ?? '',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      course.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF8898AA),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 4.w,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/money.svg",
                          width: 22.w,
                          height: 22.h,
                        ),
                        Text(
                          "${course.price.toString()} UZS",
                          style: TextStyle(
                            color: Color(0xFF525F7F),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    AppButtonImage(
                      title: 'Kursga o‘tish',
                      size: Size(311.w, 40.h),
                      callback: () {},
                      color: Color(0xFFF5365C),
                      padding: EdgeInsets.only(
                        left: 98.w,
                        top: 10.h,
                        bottom: 10.h,
                      ),
                      titleColor: Color(0xFFFFFFFF),
                      iconColor: Color(0xFFFFFFFF),
                      borderRadius: 8.r,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
