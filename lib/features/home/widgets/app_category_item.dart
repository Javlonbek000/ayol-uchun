import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/data/models/category/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppCategoryItem extends StatelessWidget {
  const AppCategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.courses);
      },
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            padding: EdgeInsets.all(7.3.r),
            width: 160.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadiusGeometry.circular(8.r),
              border: Border.all(color: Color(0xFFFDD3DB), width: 1.w),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.title,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Jami ${category.totalCourses.toString()}ta dars",
                  style: TextStyle(
                    color: Color(0xFF8898AA),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            right: 3.w,
            bottom: 2.h,
            child: Transform.rotate(
              angle: 0,
              child: Image.network(
                category.icon,
                width: 50.w,
                height: 50.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
