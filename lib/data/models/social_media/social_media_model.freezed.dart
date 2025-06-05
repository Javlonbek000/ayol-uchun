// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialMediaModel {

 int get id; String get title; String get link; String get icon;
/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialMediaModelCopyWith<SocialMediaModel> get copyWith => _$SocialMediaModelCopyWithImpl<SocialMediaModel>(this as SocialMediaModel, _$identity);

  /// Serializes this SocialMediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,link,icon);

@override
String toString() {
  return 'SocialMediaModel(id: $id, title: $title, link: $link, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $SocialMediaModelCopyWith<$Res>  {
  factory $SocialMediaModelCopyWith(SocialMediaModel value, $Res Function(SocialMediaModel) _then) = _$SocialMediaModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String link, String icon
});




}
/// @nodoc
class _$SocialMediaModelCopyWithImpl<$Res>
    implements $SocialMediaModelCopyWith<$Res> {
  _$SocialMediaModelCopyWithImpl(this._self, this._then);

  final SocialMediaModel _self;
  final $Res Function(SocialMediaModel) _then;

/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? link = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocialMediaModel implements SocialMediaModel {
  const _SocialMediaModel({required this.id, required this.title, required this.link, required this.icon});
  factory _SocialMediaModel.fromJson(Map<String, dynamic> json) => _$SocialMediaModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String link;
@override final  String icon;

/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialMediaModelCopyWith<_SocialMediaModel> get copyWith => __$SocialMediaModelCopyWithImpl<_SocialMediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialMediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,link,icon);

@override
String toString() {
  return 'SocialMediaModel(id: $id, title: $title, link: $link, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$SocialMediaModelCopyWith<$Res> implements $SocialMediaModelCopyWith<$Res> {
  factory _$SocialMediaModelCopyWith(_SocialMediaModel value, $Res Function(_SocialMediaModel) _then) = __$SocialMediaModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String link, String icon
});




}
/// @nodoc
class __$SocialMediaModelCopyWithImpl<$Res>
    implements _$SocialMediaModelCopyWith<$Res> {
  __$SocialMediaModelCopyWithImpl(this._self, this._then);

  final _SocialMediaModel _self;
  final $Res Function(_SocialMediaModel) _then;

/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? link = null,Object? icon = null,}) {
  return _then(_SocialMediaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
