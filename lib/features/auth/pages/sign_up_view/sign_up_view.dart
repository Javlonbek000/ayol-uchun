import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/managers/sign_up/sign_up_bloc.dart';
import 'package:ayol_uchun/features/auth/widgets/sign_up_bottom_section.dart';
import 'package:ayol_uchun/features/auth/widgets/app_text_form_field.dart';
import 'package:ayol_uchun/features/auth/widgets/auth_title_item.dart';
import 'package:ayol_uchun/features/auth/widgets/background_image.dart';
import 'package:ayol_uchun/features/auth/widgets/social_login_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackgroundImage(
        child: Column(
          spacing: 20.h,
          children: [
            AuthTitleItem(
              desc:
                  "O‘quv platformasiga kirish uchun quyida berilgan maydonlarni to‘ldirib ro‘yxatdan o‘ting",
            ),
            SizedBox(height: 25.h),
            Text(
              "Ro'yhatdan o'tish",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                spacing: 5.h,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'First field is required';
                      }
                      return null;
                    },
                    hintText: "Ism",
                    controller: firstNameController,
                    prefix: "assets/icons/user.svg",
                  ),
                  AppTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Second field is required';
                      }
                      return null;
                    },
                    hintText: "Familiya",
                    controller: lastNameController,
                    prefix: "assets/icons/user.svg",
                  ),
                  AppTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Third field is required';
                      }
                      return null;
                    },
                    hintText: "Elektron pochta",
                    controller: emailController,
                    prefix: "assets/icons/email.svg",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            SocialLoginSection(),
            SizedBox(height: 27.h),
            SignUpBottomSection(
              callback: () {
                if (formKey.currentState!.validate()) {
                  context.read<SignUpBloc>().add(
                    SFirstPage(
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      email: emailController.text,
                    ),
                  );
                  context.push(Routes.phone);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Siz ma'lumotlarni to'liq kiritmadingiz!"),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
