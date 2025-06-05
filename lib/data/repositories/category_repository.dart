import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/category/category_model.dart';

class CategoryRepository {
  final ApiClient client;

  CategoryRepository({required this.client});

  Future<List<CategoryModel>> getCategories([int? limit, int? page]) async {
    var rawCategory = await client.genericGetRequest<List<dynamic>>(
      '/categories/list',
      queryParams: {'Limit': limit, 'Page': page},
    );
    return rawCategory
        .map((category) => CategoryModel.fromJson(category))
        .toList();
  }
}
