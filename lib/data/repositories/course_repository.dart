import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/course/course_model.dart';

class CourseRepository {
  final ApiClient client;

  CourseRepository({required this.client});

  Future<List<CourseModel>> getCourse({
    int? categoryId,
    String? title,
    num? minPrice,
    num? maxPrice,
    String? orderBy,
  }) async {
    var rawCourses = await client.genericGetRequest<List<dynamic>>(
      '/courses/list',
      queryParams: {
        "Title": title,
        "CategoryId": categoryId,
        "MinPrice": minPrice,
        "MaxPrice": maxPrice,
        "OrderBy": orderBy,
      },
    );
    return rawCourses.map((course) => CourseModel.fromJson(course)).toList();
  }
}
