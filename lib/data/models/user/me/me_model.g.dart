// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeModel _$MeModelFromJson(Map<String, dynamic> json) => _MeModel(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  gender: json['gender'] as String?,
  birthDate: json['birthDate'] as String?,
);

Map<String, dynamic> _$MeModelToJson(_MeModel instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'gender': instance.gender,
  'birthDate': instance.birthDate,
};
