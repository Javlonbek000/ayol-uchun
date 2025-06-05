// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModel {

 int get id; String get user; String get category; String get title; String get image; int get price; num get rating; String? get status;
/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModelCopyWith<CourseModel> get copyWith => _$CourseModelCopyWithImpl<CourseModel>(this as CourseModel, _$identity);

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,category,title,image,price,rating,status);

@override
String toString() {
  return 'CourseModel(id: $id, user: $user, category: $category, title: $title, image: $image, price: $price, rating: $rating, status: $status)';
}


}

/// @nodoc
abstract mixin class $CourseModelCopyWith<$Res>  {
  factory $CourseModelCopyWith(CourseModel value, $Res Function(CourseModel) _then) = _$CourseModelCopyWithImpl;
@useResult
$Res call({
 int id, String user, String category, String title, String image, int price, num rating, String? status
});




}
/// @nodoc
class _$CourseModelCopyWithImpl<$Res>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._self, this._then);

  final CourseModel _self;
  final $Res Function(CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? category = null,Object? title = null,Object? image = null,Object? price = null,Object? rating = null,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CourseModel implements CourseModel {
  const _CourseModel({required this.id, required this.user, required this.category, required this.title, required this.image, required this.price, required this.rating, required this.status});
  factory _CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);

@override final  int id;
@override final  String user;
@override final  String category;
@override final  String title;
@override final  String image;
@override final  int price;
@override final  num rating;
@override final  String? status;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModelCopyWith<_CourseModel> get copyWith => __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,category,title,image,price,rating,status);

@override
String toString() {
  return 'CourseModel(id: $id, user: $user, category: $category, title: $title, image: $image, price: $price, rating: $rating, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CourseModelCopyWith<$Res> implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(_CourseModel value, $Res Function(_CourseModel) _then) = __$CourseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String user, String category, String title, String image, int price, num rating, String? status
});




}
/// @nodoc
class __$CourseModelCopyWithImpl<$Res>
    implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(this._self, this._then);

  final _CourseModel _self;
  final $Res Function(_CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? category = null,Object? title = null,Object? image = null,Object? price = null,Object? rating = null,Object? status = freezed,}) {
  return _then(_CourseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
