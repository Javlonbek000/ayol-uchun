// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) =>
    _SocialMediaModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      link: json['link'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$SocialMediaModelToJson(_SocialMediaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'icon': instance.icon,
    };
