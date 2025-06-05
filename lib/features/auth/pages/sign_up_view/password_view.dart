import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/managers/sign_up/sign_up_bloc.dart';
import 'package:ayol_uchun/features/auth/managers/sign_up/sign_up_state.dart';
import 'package:ayol_uchun/features/auth/widgets/app_password_form_field.dart';
import 'package:ayol_uchun/features/auth/widgets/auth_title_item.dart';
import 'package:ayol_uchun/features/auth/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/app_button.dart';

class PasswordView extends StatefulWidget {
  const PasswordView({super.key});

  @override
  State<PasswordView> createState() => _PasswordViewState();
}

class _PasswordViewState extends State<PasswordView> {
  final passwordController = TextEditingController();
  final confirmPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == SignUpStatus.success) {
          context.go(Routes.login);
        } else if (state.status == SignUpStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Ro'yxatdan o‘tishda xatolik yuz berdi")),
          );
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundImage(
          child: Form(
            key: formKey,
            child: Column(
              spacing: 20.h,
              children: [
                AuthTitleItem(
                  desc:
                      "O‘quv platformasiga kirish uchun telefon raqamingizni kiriting",
                ),
                SizedBox(height: 25.h),
                Text(
                  "Telefon raqami",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                AppPasswordFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First field is required';
                    }
                    return null;
                  },
                  hintText: 'parol',
                  controller: passwordController,
                  prefix: "assets/icons/lock.svg",
                ),
                AppPasswordFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Second field is required';
                    }
                    return null;
                  },
                  hintText: 'parol tasdiqlash',
                  controller: confirmPassword,
                  prefix: "assets/icons/lock.svg",
                ),
                Spacer(),
                AppButton(
                  title: "Kirish",
                  size: Size(335.w, 43.h),
                  callback: () {
                    if (formKey.currentState!.validate() &&
                        passwordController.text == confirmPassword.text) {
                      context.read<SignUpBloc>().add(
                        SThirdPage(password: passwordController.text),
                      );
                      context.read<SignUpBloc>().add(SignUpSubmitted());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Siz ma'lumotlarni to'liq kiritmadingiz yoki parollar bir xil emas!",
                          ),
                        ),
                      );
                    }
                  },
                  color: Color(0xFFF5365C),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
