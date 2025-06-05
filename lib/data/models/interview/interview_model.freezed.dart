// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InterviewModel {

 int get id; String get title; String get user; String get image; int get duration;
/// Create a copy of InterviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewModelCopyWith<InterviewModel> get copyWith => _$InterviewModelCopyWithImpl<InterviewModel>(this as InterviewModel, _$identity);

  /// Serializes this InterviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.user, user) || other.user == user)&&(identical(other.image, image) || other.image == image)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,user,image,duration);

@override
String toString() {
  return 'InterviewModel(id: $id, title: $title, user: $user, image: $image, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $InterviewModelCopyWith<$Res>  {
  factory $InterviewModelCopyWith(InterviewModel value, $Res Function(InterviewModel) _then) = _$InterviewModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String user, String image, int duration
});




}
/// @nodoc
class _$InterviewModelCopyWithImpl<$Res>
    implements $InterviewModelCopyWith<$Res> {
  _$InterviewModelCopyWithImpl(this._self, this._then);

  final InterviewModel _self;
  final $Res Function(InterviewModel) _then;

/// Create a copy of InterviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? user = null,Object? image = null,Object? duration = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _InterviewModel implements InterviewModel {
  const _InterviewModel({required this.id, required this.title, required this.user, required this.image, required this.duration});
  factory _InterviewModel.fromJson(Map<String, dynamic> json) => _$InterviewModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String user;
@override final  String image;
@override final  int duration;

/// Create a copy of InterviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewModelCopyWith<_InterviewModel> get copyWith => __$InterviewModelCopyWithImpl<_InterviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.user, user) || other.user == user)&&(identical(other.image, image) || other.image == image)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,user,image,duration);

@override
String toString() {
  return 'InterviewModel(id: $id, title: $title, user: $user, image: $image, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$InterviewModelCopyWith<$Res> implements $InterviewModelCopyWith<$Res> {
  factory _$InterviewModelCopyWith(_InterviewModel value, $Res Function(_InterviewModel) _then) = __$InterviewModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String user, String image, int duration
});




}
/// @nodoc
class __$InterviewModelCopyWithImpl<$Res>
    implements _$InterviewModelCopyWith<$Res> {
  __$InterviewModelCopyWithImpl(this._self, this._then);

  final _InterviewModel _self;
  final $Res Function(_InterviewModel) _then;

/// Create a copy of InterviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? user = null,Object? image = null,Object? duration = null,}) {
  return _then(_InterviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
