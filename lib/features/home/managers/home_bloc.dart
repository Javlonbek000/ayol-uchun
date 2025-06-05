import 'package:ayol_uchun/data/repositories/category_repository.dart';
import 'package:ayol_uchun/data/repositories/course_repository.dart';
import 'package:ayol_uchun/data/repositories/interview_repository.dart';
import 'package:ayol_uchun/data/repositories/social_media_repository.dart';
import 'package:ayol_uchun/data/repositories/user_repository.dart';
import 'package:ayol_uchun/features/home/managers/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_events.dart';

class HomeBloc extends Bloc<HomeEvents, HomeState> {
  final CategoryRepository _catRepo;
  final InterviewRepository _interviewRepo;
  final SocialMediaRepository _socialMediaRepo;
  final CourseRepository _courseRepo;
  final UserRepository _userRepo;

  HomeBloc({
    required CategoryRepository cateRepo,
    required InterviewRepository interviewRepo,
    required SocialMediaRepository socialMediaRepo,
    required CourseRepository courseRepo,
    required UserRepository userRepo,
  })
      : _catRepo = cateRepo,
        _interviewRepo = interviewRepo,
        _socialMediaRepo = socialMediaRepo,
        _courseRepo = courseRepo,
        _userRepo = userRepo,
        super(HomeState.initial()) {
    on<HomeLoad>(_onLoad);
    add(HomeLoad());
  }

  Future<void> _onLoad(HomeLoad event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final me = await _userRepo.getMyInformation();
      final categories = await _catRepo.getCategories(8, 1);
      final interviews = await _interviewRepo.getInterviews(2, 1);
      final socialMedia = await _socialMediaRepo.getSocialMedias();
      final courses = await _courseRepo.getCourse();
      emit(
        state.copyWith(
          categories: categories,
          status: HomeStatus.success,
          interviews: interviews,
          socialMedias: socialMedia,
          courses: courses,
          name: me?.firstName ?? '',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}
