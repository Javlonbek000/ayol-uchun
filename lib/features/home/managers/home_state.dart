import 'package:ayol_uchun/data/models/category/category_model.dart';
import 'package:ayol_uchun/data/models/course/course_model.dart';
import 'package:ayol_uchun/data/models/interview/interview_model.dart';
import 'package:ayol_uchun/data/models/social_media/social_media_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStatus { idle, loading, success, error }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required List<CategoryModel> categories,
    required List<InterviewModel> interviews,
    required List<SocialMediaModel> socialMedias,
    required List<CourseModel> courses,
    required HomeStatus status,
    required String name,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      categories: [],
      status: HomeStatus.idle,
      interviews: [],
      socialMedias: [],
      courses: [],
      name: '',
    );
  }
}
