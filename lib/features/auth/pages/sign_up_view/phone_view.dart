import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/managers/sign_up/sign_up_bloc.dart';
import 'package:ayol_uchun/features/auth/widgets/auth_title_item.dart';
import 'package:ayol_uchun/features/auth/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text_form_field.dart';

class PhoneView extends StatefulWidget {
  const PhoneView({super.key});

  @override
  State<PhoneView> createState() => _PhoneViewState();
}

class _PhoneViewState extends State<PhoneView> {
  final phoneController = TextEditingController();
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
            Form(
              key: formKey,
              child: AppTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                hintText: '+998',
                controller: phoneController,
                prefix: "assets/icons/phone.svg",
              ),
            ),
            SizedBox(height: 330.h,),
            SizedBox(
              height: 94.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    title: "Davom Etish",
                    size: Size(335.w, 43.h),
                    callback: () {
                      if (formKey.currentState!.validate()) {
                        context.read<SignUpBloc>().add(
                          SSecondPage(phoneNumber: phoneController.text),
                        );
                        context.push(Routes.password);
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Siz ma'lumotlarni to'liq kiritmadingiz!"),
                          ),
                        );
                      }
                    },
                    color: Color(0xFFF5365C),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
