import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/managers/login/login_bloc.dart';
import 'package:ayol_uchun/features/auth/managers/sign_up/sign_up_bloc.dart';
import 'package:ayol_uchun/features/auth/pages/login_view.dart';
import 'package:ayol_uchun/features/auth/pages/sign_up_view/code_view.dart';
import 'package:ayol_uchun/features/auth/pages/sign_up_view/password_view.dart';
import 'package:ayol_uchun/features/auth/pages/sign_up_view/phone_view.dart';
import 'package:ayol_uchun/features/auth/pages/sign_up_view/sign_up_view.dart';
import 'package:ayol_uchun/features/courses/manager/course_bloc.dart';
import 'package:ayol_uchun/features/courses/pages/courses_view.dart';
import 'package:ayol_uchun/features/home/managers/home_bloc.dart';
import 'package:ayol_uchun/features/home/pages/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: Routes.login,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => BlocProvider(
        create: (context) => LoginBloc(repo: context.read()),
        child: LoginView(),
      ),
    ),
    ShellRoute(
      builder: (context, state, child) => BlocProvider(
        create: (context) => SignUpBloc(repo: context.read()),
        child: child,
      ),
      routes: [
        GoRoute(path: Routes.signUp, builder: (context, state) => SignUpView()),
        GoRoute(path: Routes.phone, builder: (context, state) => PhoneView()),
        GoRoute(path: Routes.code, builder: (context, state) => CodeView(),),
        GoRoute(
          path: Routes.password,
          builder: (context, state) => PasswordView(),
        ),
      ],
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeBloc(
          userRepo: context.read(),
          cateRepo: context.read(),
          interviewRepo: context.read(),
          socialMediaRepo: context.read(),
          courseRepo: context.read(),
        ),
        child: HomeView(),
      ),
    ),
    GoRoute(
      path: Routes.courses,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            CourseBloc(courseRepo: context.read(), catRepo: context.read()),
        child: CoursesView(),
      ),
    ),
  ],
);
