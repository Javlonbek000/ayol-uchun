import 'package:ayol_uchun/data/models/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_media_model.freezed.dart';

part 'social_media_model.g.dart';

@freezed
abstract class SocialMediaModel with _$SocialMediaModel implements IJsonSerializable{
  const factory SocialMediaModel({
    required int id,
    required String title,
    required String link,
    required String icon,
  }) = _SocialMediaModel;

  factory SocialMediaModel.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaModelFromJson(json);
}
