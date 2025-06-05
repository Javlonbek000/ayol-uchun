import 'package:ayol_uchun/data/repositories/category_repository.dart';
import 'package:ayol_uchun/data/repositories/course_repository.dart';
import 'package:ayol_uchun/features/courses/manager/course_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'course_events.dart';

class CourseBloc extends Bloc<CourseEvents, CourseState> {
  final CourseRepository _courseRepo;
  final CategoryRepository _catRepo;

  CourseBloc({
    required CourseRepository courseRepo,
    required CategoryRepository catRepo,
  }) : _courseRepo = courseRepo,
       _catRepo = catRepo,
       super(CourseState.initial()) {
    on<CourseLoad>(_onCoursesLoad);
    add(CourseLoad());
  }

  Future<void> _onCoursesLoad(
    CourseLoad event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(status: CourseStatus.loading));
    try {
      final courses = await _courseRepo.getCourse(categoryId: event.categoryId);
      final categories = await _catRepo.getCategories();
      emit(
        state.copyWith(
          status: CourseStatus.success,
          courses: courses,
          categories: categories,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CourseStatus.error));
    }
  }
}
