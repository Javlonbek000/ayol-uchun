import 'package:ayol_uchun/data/models/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'me_model.freezed.dart';

part 'me_model.g.dart';

@freezed
abstract class MeModel with _$MeModel implements IJsonSerializable {
  const factory MeModel({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String? gender,
    required String? birthDate,
  }) = _MeModel;

  factory MeModel.fromJson(Map<String, dynamic> json) => _$MeModelFromJson(json);
}
