import 'package:ayol_uchun/data/models/interview/interview_model.dart';
import 'package:ayol_uchun/features/home/widgets/sections/app_interview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeInterviewsSection extends StatelessWidget {
  const HomeInterviewsSection({super.key, required this.interviews});
  final List<InterviewModel> interviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 16.w, top: 24.h,bottom: 24.h),
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "INTERVYULAR",
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 251.h,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => AppInterviewItem(interview: interviews[index],),
            ),
          ),
          SizedBox(
            width: 173.w,
            height: 21.h,
            child: GestureDetector(
              onTap: () {},
              child: Row(
                spacing: 4.w,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Barcha intervyular",
                    style: TextStyle(
                      color: Color(0xFF8898AA),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/arrow_right.svg",
                    width: 20.w,
                    height: 20.h,
                    colorFilter: ColorFilter.mode(
                      Color(0xFF8898AA),
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
