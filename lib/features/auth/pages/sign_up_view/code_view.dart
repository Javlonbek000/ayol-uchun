import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/widgets/auth_title_item.dart';
import 'package:ayol_uchun/features/auth/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/app_button.dart';

class CodeView extends StatefulWidget {
  const CodeView({super.key});

  @override
  State<CodeView> createState() => _CodeViewState();
}

class _CodeViewState extends State<CodeView> {
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
            SizedBox(height: 20.h),
            Text(
              "Tasdiqlash kodi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Form(
              key: formKey,
              child: PinCodeTextField(
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50.h,
                  fieldWidth: 40.w,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  activeColor: Colors.grey,
                  selectedColor: Colors.pink,
                  inactiveColor: Colors.grey,
                ),
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: phoneController,
                onChanged: (value) {},
                appContext: context,
                validator: (value) {
                  if (value == null || value.length != 6) {
                    return 'Iltimos 6 ta raqam kiriting';
                  }
                  return null;
                },
              ),
            ),
            Spacer(),
            AppButton(
              title: "Davom Etish",
              size: Size(335.w, 43.h),
              callback: () {
                if (formKey.currentState!.validate()) {
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
    );
  }
}
