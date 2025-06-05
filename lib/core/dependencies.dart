import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/repositories/auth_repository.dart';
import 'package:ayol_uchun/data/repositories/category_repository.dart';
import 'package:ayol_uchun/data/repositories/course_repository.dart';
import 'package:ayol_uchun/data/repositories/interview_repository.dart';
import 'package:ayol_uchun/data/repositories/social_media_repository.dart';
import 'package:ayol_uchun/data/repositories/user_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => AuthRepository(client: context.read())),
  Provider(create: (context) => CategoryRepository(client: context.read())),
  Provider(create: (context) => InterviewRepository(client: context.read())),
  Provider(create: (context) => SocialMediaRepository(client: context.read())),
  Provider(create: (context) => CourseRepository(client: context.read())),
  Provider(create: (context) => UserRepository(client: context.read())),
];
