part of 'course_bloc.dart';

sealed class CourseEvents {}

final class CourseLoad extends CourseEvents {
  final int? categoryId;

  CourseLoad({ this.categoryId});
}