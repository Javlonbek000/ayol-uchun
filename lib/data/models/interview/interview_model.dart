import 'package:ayol_uchun/data/models/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_model.freezed.dart';

part 'interview_model.g.dart';

@freezed
abstract class InterviewModel with _$InterviewModel implements IJsonSerializable{
  const factory InterviewModel({
    required int id,
    required String title,
    required String user,
    required String image,
    required int duration,
  }) = _InterviewModel;

  factory InterviewModel.fromJson(Map<String, dynamic> json) =>
      _$InterviewModelFromJson(json);
}
