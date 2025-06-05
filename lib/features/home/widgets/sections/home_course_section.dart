import 'package:ayol_uchun/features/home/widgets/home_course_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/course/course_model.dart';

class HomeCourseSection extends StatelessWidget {
  const HomeCourseSection({super.key, required this.courses});

  final List<CourseModel> courses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 24.h, bottom: 24.h),
      child: SizedBox(
        width: double.infinity,
        height: 322.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ko‘rishni davom etish",
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 281.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) => HomeCourseItem(course: courses[index],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
