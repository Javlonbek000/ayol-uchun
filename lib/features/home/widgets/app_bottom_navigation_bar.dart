import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'bottom_nav_bar_item.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key, required this.index});
  final int index;

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  late int selectedIndex;
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.index;
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.5.w, vertical: 13.h),
      width: double.infinity,
      height: 90.h,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF8898AA).withValues(alpha: 0.1),
            offset: Offset(0, -4),
            blurRadius: 30,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavBarItem(
            image: "assets/icons/home.svg",
            title: "Home",
            isSelected: selectedIndex == 0,
            callback: () {
              onItemTapped(0);
              context.go(Routes.home);
            },
          ),
          BottomNavBarItem(
            image: "assets/icons/courses.svg",
            title: "Kurslar",
            isSelected: selectedIndex == 1,
            callback: () {
              onItemTapped(1);
              context.go(Routes.courses);
            },
          ),
          BottomNavBarItem(
            image: "assets/icons/blog.svg",
            title: "Blog",
            isSelected: selectedIndex == 2,
            callback: () => onItemTapped(2),
          ),
          BottomNavBarItem(
            image: "assets/icons/cabinet.svg",
            title: "Cabinet",
            isSelected: selectedIndex == 3,
            callback: () => onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
