import 'package:ayol_uchun/data/models/category/category_model.dart';
import 'package:ayol_uchun/features/common/widgets/buttons/app_button_image.dart';
import 'package:ayol_uchun/features/home/widgets/app_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      width: double.infinity,
      height: 397.h,
      color: Color(0xFFFBF2F4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kategoriyalar",
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 16.h,
                mainAxisExtent: 50.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) =>
                  AppCategoryItem(category: categories[index]),
            ),
          ),
          AppButtonImage(
            title: "Barcha kategoriyalar",
            size: Size(335.w, 44.h),
            callback: () {},
            titleColor: Color(0xFF222222),
            padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 12.h),
            color: Color(0xFFF5365C),
          ),
        ],
      ),
    );
  }
}
