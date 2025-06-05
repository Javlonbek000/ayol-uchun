// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterviewModel _$InterviewModelFromJson(Map<String, dynamic> json) =>
    _InterviewModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      user: json['user'] as String,
      image: json['image'] as String,
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$InterviewModelToJson(_InterviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'user': instance.user,
      'image': instance.image,
      'duration': instance.duration,
    };
