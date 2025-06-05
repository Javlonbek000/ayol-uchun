// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => _CourseModel(
  id: (json['id'] as num).toInt(),
  user: json['user'] as String,
  category: json['category'] as String,
  title: json['title'] as String,
  image: json['image'] as String,
  price: (json['price'] as num).toInt(),
  rating: json['rating'] as num,
  status: json['status'] as String?,
);

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'category': instance.category,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'rating': instance.rating,
      'status': instance.status,
    };
