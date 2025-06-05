import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/interview/interview_model.dart';

class InterviewRepository {
  final ApiClient client;

  InterviewRepository({required this.client});

  Future<List<InterviewModel>> getInterviews([int? limit, int? page]) async {
    final rawInterview = await client.genericGetRequest<List<dynamic>>(
      '/interviews/list',
      queryParams: {'Limit': limit, 'Page': page},
    );
    return rawInterview
        .map((interview) => InterviewModel.fromJson(interview))
        .toList();
  }
}
