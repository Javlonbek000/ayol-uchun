import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppPasswordFormField extends StatefulWidget {
  const AppPasswordFormField({
    super.key,
    required this.validator,
    required this.hintText,
    required this.controller,
    this.autoValidateMode = AutovalidateMode.onUnfocus,
    this.width = 335,
    this.height = 44,
    required this.prefix,
  });

  final String hintText;
  final TextEditingController controller;

  final String? Function(String? value) validator;
  final AutovalidateMode autoValidateMode;
  final double width, height;
  final String prefix;

  @override
  State<AppPasswordFormField> createState() => _AppPasswordFormFieldState();
}

class _AppPasswordFormFieldState extends State<AppPasswordFormField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          // height: widget.height.h,
          width: widget.width.w,
          child: TextFormField(
            obscureText: obscure,
            obscuringCharacter: "*",
            cursorColor: Colors.black,
            cursorHeight: 22.h,
            controller: widget.controller,
            autovalidateMode: widget.autoValidateMode,
            validator: widget.validator,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                padding: EdgeInsets.only(right: 12.w),
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/eye.svg",
                  width: 20.w,
                  height: 20.h,
                ),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 12.h),
                child: SvgPicture.asset(
                  widget.prefix,
                  width: 20.w,
                  height: 20.h,
                ),
              ),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Color(0xFFADB5BD),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.h,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              ),
              filled: true,
              fillColor: Color(0xFFFFFFFF),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 12.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
