import 'package:ayol_uchun/data/models/social_media/social_media_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AppSocialMediaSection extends StatelessWidget {
  const AppSocialMediaSection({super.key, required this.media});

  final List<SocialMediaModel> media;

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $urlString');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        width: 335.w,
        height: 115.h,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF888B8F).withValues(alpha: 0.1),
              offset: Offset(0, 4),
              blurRadius: 16,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ijtimoiy tarmoqlarimiz:",
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 288.w,
              height: 32.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: media.map((social) {
                  return GestureDetector(
                    onTap: () {
                      _launchUrl(social.link);
                    },
                    child: SvgPicture.network(
                      social.icon,
                      width: 32.w,
                      height: 32.h,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
