import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/managers/login/login_bloc.dart';
import 'package:ayol_uchun/features/auth/widgets/background_image.dart';
import 'package:ayol_uchun/features/auth/widgets/app_button.dart';
import 'package:ayol_uchun/features/auth/widgets/app_password_form_field.dart';
import 'package:ayol_uchun/features/auth/widgets/app_text_form_field.dart';
import 'package:ayol_uchun/features/auth/widgets/auth_title_item.dart';
import 'package:ayol_uchun/features/auth/widgets/social_login_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../managers/login/login_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (BuildContext context, state) {
        if (state.status == LoginStatus.success) {
          context.go(Routes.home);
        } else if (state.status == LoginStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: Duration(seconds: 2),
              backgroundColor: Color(0xFF222222),
              content: Text(
                state.errorMessage,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          );
        } else if (state.status == LoginStatus.loading) {
          Center(child: CircularProgressIndicator());
        }
      },
      builder: (BuildContext context, state) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundImage(
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AuthTitleItem(
                desc:
                    "O‘quv platformasiga kirish uchun quyida elektron pochtangiz va parolingizni kiriting",
              ),
              SizedBox(height: 25.h),
              Text(
                "Kirish",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 151.h,
                child: Form(
                  autovalidateMode: _autoValidateMode,
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextFormField(
                        autoValidateMode: AutovalidateMode.disabled,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "First field is required!";
                          }
                          return null;
                        },
                        hintText: '+998',
                        controller: emailController,
                        prefix: "assets/icons/phone.svg",
                      ),
                      AppPasswordFormField(

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Second field is required!";
                          }
                          return null;
                        },
                        hintText: 'Parol',
                        controller: passwordController,
                        prefix: "assets/icons/lock.svg",
                      ),
                      Text(
                        'Parolni unutdingizmi',
                        style: TextStyle(
                          color: Color(0xFFCED4DA),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 68.h),
              SocialLoginSection(),
              SizedBox(height: 12.h),
              SizedBox(
                height: 94.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                      title: "Kirish",
                      size: Size(335.w, 43.h),
                      callback: () {
                        if (formKey.currentState!.validate()) {
                          context.read<LoginBloc>().add(
                            LoginRequest(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text("Siz toliq malumot kiritmadingiz!")));
                        }
                      },
                      color: Color(0xFFF5365C),
                    ),
                    AppButton(
                      title: "Ro'yhatdan o'tish",
                      size: Size(335.w, 43.h),
                      callback: () {
                        context.push(Routes.signUp);
                      },
                      color: Color(0xFF3F5170),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
