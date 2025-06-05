// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 List<CategoryModel> get categories; List<InterviewModel> get interviews; List<SocialMediaModel> get socialMedias; List<CourseModel> get courses; HomeStatus get status; String get name;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.interviews, interviews)&&const DeepCollectionEquality().equals(other.socialMedias, socialMedias)&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(interviews),const DeepCollectionEquality().hash(socialMedias),const DeepCollectionEquality().hash(courses),status,name);

@override
String toString() {
  return 'HomeState(categories: $categories, interviews: $interviews, socialMedias: $socialMedias, courses: $courses, status: $status, name: $name)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories, List<InterviewModel> interviews, List<SocialMediaModel> socialMedias, List<CourseModel> courses, HomeStatus status, String name
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? interviews = null,Object? socialMedias = null,Object? courses = null,Object? status = null,Object? name = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewModel>,socialMedias: null == socialMedias ? _self.socialMedias : socialMedias // ignore: cast_nullable_to_non_nullable
as List<SocialMediaModel>,courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required final  List<CategoryModel> categories, required final  List<InterviewModel> interviews, required final  List<SocialMediaModel> socialMedias, required final  List<CourseModel> courses, required this.status, required this.name}): _categories = categories,_interviews = interviews,_socialMedias = socialMedias,_courses = courses;
  

 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<InterviewModel> _interviews;
@override List<InterviewModel> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}

 final  List<SocialMediaModel> _socialMedias;
@override List<SocialMediaModel> get socialMedias {
  if (_socialMedias is EqualUnmodifiableListView) return _socialMedias;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_socialMedias);
}

 final  List<CourseModel> _courses;
@override List<CourseModel> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

@override final  HomeStatus status;
@override final  String name;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._interviews, _interviews)&&const DeepCollectionEquality().equals(other._socialMedias, _socialMedias)&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_interviews),const DeepCollectionEquality().hash(_socialMedias),const DeepCollectionEquality().hash(_courses),status,name);

@override
String toString() {
  return 'HomeState(categories: $categories, interviews: $interviews, socialMedias: $socialMedias, courses: $courses, status: $status, name: $name)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> categories, List<InterviewModel> interviews, List<SocialMediaModel> socialMedias, List<CourseModel> courses, HomeStatus status, String name
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? interviews = null,Object? socialMedias = null,Object? courses = null,Object? status = null,Object? name = null,}) {
  return _then(_HomeState(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewModel>,socialMedias: null == socialMedias ? _self._socialMedias : socialMedias // ignore: cast_nullable_to_non_nullable
as List<SocialMediaModel>,courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
