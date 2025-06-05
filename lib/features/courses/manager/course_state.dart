import 'package:ayol_uchun/data/models/category/category_model.dart';
import 'package:ayol_uchun/data/models/course/course_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_state.freezed.dart';

enum CourseStatus { idle, loading, success, error }

@freezed
abstract class CourseState with _$CourseState {
  const factory CourseState({
    required List<CourseModel> courses,
    required List<CategoryModel> categories,
    required CourseStatus status,
  }) = _CourseState;

  factory CourseState.initial() {
    return CourseState(courses: [], status: CourseStatus.idle, categories: []);
  }
}
