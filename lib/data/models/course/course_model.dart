import 'package:ayol_uchun/data/models/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';

part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel implements IJsonSerializable {
  const factory CourseModel({
    required int id,
    required String user,
    required String category,
    required String title,
    required String image,
    required int price,
    required num rating,
    required String? status,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}
