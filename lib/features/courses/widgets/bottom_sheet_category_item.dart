import 'package:ayol_uchun/data/models/category/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetCategoryItem extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomSheetCategoryItem({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                height: 52.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFF7FAFC),
                  borderRadius: BorderRadius.circular(8.r),
                  border: isSelected
                      ? Border.all(color: const Color(0xFFF5365C), width: 1)
                      : null,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/${isSelected ? "on" : "off"}.svg",
                      width: 20.w,
                      height: 20.h,
                    ),
                    SizedBox(width: 11.w),
                    Text(
                      category.title,
                      style: TextStyle(
                        color: const Color(0xFF32325D),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 3.w,
                bottom: 2.h,
                child: Image.network(
                  category.icon,
                  width: 50.w,
                  height: 50.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}

