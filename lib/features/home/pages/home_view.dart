import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/widgets/app_button.dart';
import 'package:ayol_uchun/features/home/managers/home_bloc.dart';
import 'package:ayol_uchun/features/home/managers/home_state.dart';
import 'package:ayol_uchun/features/home/widgets/sections/home_course_section.dart';
import 'package:ayol_uchun/features/home/widgets/app_advertisement.dart';
import 'package:ayol_uchun/features/home/widgets/app_bottom_navigation_bar.dart';
import 'package:ayol_uchun/features/home/widgets/sections/app_social_media_section.dart';
import 'package:ayol_uchun/features/home/widgets/sections/home_category_section.dart';
import 'package:ayol_uchun/features/home/widgets/sections/home_interviews_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../widgets/oval_app_bar_painter.dart';
import '../widgets/sections/home_empty_course_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == HomeStatus.success) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(105.5.h + 1.h),
              child: Stack(
                children: [
                  SizedBox(
                    height: 105.5.h + 30.h,
                    width: double.infinity,
                    child: CustomPaint(painter: OvalAppBarPainter()),
                  ),
                  AppBar(
                    toolbarHeight: 105.5.h,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    title: Text(
                      "Salom, ${state.name} 🌸",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/notification.svg",
                          width: 28.w,
                          height: 28.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: ListView(
              children: [
                state.courses.isEmpty
                    ? HomeEmptyCourseSection()
                    : HomeCourseSection(courses: state.courses),
                HomeCategorySection(categories: state.categories),
                AppSocialMediaSection(media: state.socialMedias),
                HomeInterviewsSection(interviews: state.interviews),
                AppAdvertisement(),
              ],
            ),
            bottomNavigationBar: AppBottomNavigationBar(index: 0),
          );
        } else if (state.status == HomeStatus.error) {
          return Scaffold(
            appBar: AppBar(
              leadingWidth: 200.w,
              leading: AppButton(
                title: "Login",
                color: Colors.red,
                callback: () => context.go(Routes.login),
                size: Size(100.w, 50.h),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Center(
                child: Text(
                  "Xatolik yuz berdi iltimos qayta login qilib koring",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        }
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
