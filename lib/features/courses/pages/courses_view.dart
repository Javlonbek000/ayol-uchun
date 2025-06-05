import 'package:ayol_uchun/features/courses/manager/course_bloc.dart';
import 'package:ayol_uchun/features/courses/manager/course_state.dart';
import 'package:ayol_uchun/features/courses/widgets/all_cource_item.dart';
import 'package:ayol_uchun/features/courses/widgets/app_bottom_sheet.dart';
import 'package:ayol_uchun/features/home/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/routes.dart';
import '../../auth/widgets/app_button.dart';
import '../../home/widgets/oval_app_bar_painter.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseBloc, CourseState>(
      builder: (context, state) {
        if (state.status == CourseStatus.success) {
          final courseBloc = context.read<CourseBloc>();
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
                    automaticallyImplyLeading: false,
                    toolbarHeight: 105.5.h,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    title: Text(
                      "Kurslar 📚",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => BlocProvider.value(
                              value: courseBloc,
                              child: AppBottomSheet(
                                categories: state.categories,
                              ),
                            ),
                          );
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/filter.svg",
                          width: 28.w,
                          height: 28.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: ListView.builder(
              itemCount: state.courses.length,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20.w,
                vertical: 24.h,
              ),
              itemBuilder: (context, index) =>
                  AllCourseItem(course: state.courses[index]),
            ),
            bottomNavigationBar: AppBottomNavigationBar(index: 1),
          );
        } else if (state.status == CourseStatus.error) {
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
