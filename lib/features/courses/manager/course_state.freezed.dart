// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseState {

 List<CourseModel> get courses; List<CategoryModel> get categories; CourseStatus get status;
/// Create a copy of CourseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseStateCopyWith<CourseState> get copyWith => _$CourseStateCopyWithImpl<CourseState>(this as CourseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseState&&const DeepCollectionEquality().equals(other.courses, courses)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(courses),const DeepCollectionEquality().hash(categories),status);

@override
String toString() {
  return 'CourseState(courses: $courses, categories: $categories, status: $status)';
}


}

/// @nodoc
abstract mixin class $CourseStateCopyWith<$Res>  {
  factory $CourseStateCopyWith(CourseState value, $Res Function(CourseState) _then) = _$CourseStateCopyWithImpl;
@useResult
$Res call({
 List<CourseModel> courses, List<CategoryModel> categories, CourseStatus status
});




}
/// @nodoc
class _$CourseStateCopyWithImpl<$Res>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._self, this._then);

  final CourseState _self;
  final $Res Function(CourseState) _then;

/// Create a copy of CourseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courses = null,Object? categories = null,Object? status = null,}) {
  return _then(_self.copyWith(
courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CourseStatus,
  ));
}

}


/// @nodoc


class _CourseState implements CourseState {
  const _CourseState({required final  List<CourseModel> courses, required final  List<CategoryModel> categories, required this.status}): _courses = courses,_categories = categories;
  

 final  List<CourseModel> _courses;
@override List<CourseModel> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  CourseStatus status;

/// Create a copy of CourseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseStateCopyWith<_CourseState> get copyWith => __$CourseStateCopyWithImpl<_CourseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseState&&const DeepCollectionEquality().equals(other._courses, _courses)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses),const DeepCollectionEquality().hash(_categories),status);

@override
String toString() {
  return 'CourseState(courses: $courses, categories: $categories, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CourseStateCopyWith<$Res> implements $CourseStateCopyWith<$Res> {
  factory _$CourseStateCopyWith(_CourseState value, $Res Function(_CourseState) _then) = __$CourseStateCopyWithImpl;
@override @useResult
$Res call({
 List<CourseModel> courses, List<CategoryModel> categories, CourseStatus status
});




}
/// @nodoc
class __$CourseStateCopyWithImpl<$Res>
    implements _$CourseStateCopyWith<$Res> {
  __$CourseStateCopyWithImpl(this._self, this._then);

  final _CourseState _self;
  final $Res Function(_CourseState) _then;

/// Create a copy of CourseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courses = null,Object? categories = null,Object? status = null,}) {
  return _then(_CourseState(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CourseStatus,
  ));
}


}

// dart format on
