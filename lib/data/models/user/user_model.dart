import 'package:ayol_uchun/data/models/interfaces/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel implements IJsonSerializable {
  const factory UserModel({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
