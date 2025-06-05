import 'package:ayol_uchun/data/models/category/category_model.dart';
import 'package:ayol_uchun/features/auth/widgets/app_button.dart';
import 'package:ayol_uchun/features/courses/manager/course_bloc.dart';
import 'package:ayol_uchun/features/courses/widgets/bottom_sheet_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppBottomSheet extends StatefulWidget {
  const AppBottomSheet({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  int? selectedCategoryId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 447.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Filter",
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Kategoriyalar",
            style: TextStyle(
              color: Color(0xFF172B4D),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: ListView.builder(
              itemCount: widget.categories.length,
              itemBuilder: (context, index) {
                final category = widget.categories[index];
                return BottomSheetCategoryItem(
                  category: category,
                  isSelected: selectedCategoryId == category.id,
                  onTap: () {
                    setState(() {
                      selectedCategoryId = category.id;
                    });
                  },
                );
              },
            ),
          ),
          AppButton(
            title: "Qo'llash",
            size: Size(343.w, 40.h),
            callback: () {
              if (selectedCategoryId != null) {
                context.read<CourseBloc>().add(
                  CourseLoad(categoryId: selectedCategoryId!),
                );
                context.pop(selectedCategoryId);
              } else {
                context.pop();
              }
            },
            color: const Color(0xFFF5365C),
            borderRadius: 8.r,
          ),
        ],
      ),
    );
  }
}
