// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AboutItem {

 String get title; String get content;
/// Create a copy of AboutItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutItemCopyWith<AboutItem> get copyWith => _$AboutItemCopyWithImpl<AboutItem>(this as AboutItem, _$identity);

  /// Serializes this AboutItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutItem&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'AboutItem(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $AboutItemCopyWith<$Res>  {
  factory $AboutItemCopyWith(AboutItem value, $Res Function(AboutItem) _then) = _$AboutItemCopyWithImpl;
@useResult
$Res call({
 String title, String content
});




}
/// @nodoc
class _$AboutItemCopyWithImpl<$Res>
    implements $AboutItemCopyWith<$Res> {
  _$AboutItemCopyWithImpl(this._self, this._then);

  final AboutItem _self;
  final $Res Function(AboutItem) _then;

/// Create a copy of AboutItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AboutItem].
extension AboutItemPatterns on AboutItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutItem value)  $default,){
final _that = this;
switch (_that) {
case _AboutItem():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutItem value)?  $default,){
final _that = this;
switch (_that) {
case _AboutItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutItem() when $default != null:
return $default(_that.title,_that.content);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String content)  $default,) {final _that = this;
switch (_that) {
case _AboutItem():
return $default(_that.title,_that.content);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String content)?  $default,) {final _that = this;
switch (_that) {
case _AboutItem() when $default != null:
return $default(_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AboutItem implements AboutItem {
  const _AboutItem({required this.title, required this.content});
  factory _AboutItem.fromJson(Map<String, dynamic> json) => _$AboutItemFromJson(json);

@override final  String title;
@override final  String content;

/// Create a copy of AboutItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutItemCopyWith<_AboutItem> get copyWith => __$AboutItemCopyWithImpl<_AboutItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AboutItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutItem&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'AboutItem(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$AboutItemCopyWith<$Res> implements $AboutItemCopyWith<$Res> {
  factory _$AboutItemCopyWith(_AboutItem value, $Res Function(_AboutItem) _then) = __$AboutItemCopyWithImpl;
@override @useResult
$Res call({
 String title, String content
});




}
/// @nodoc
class __$AboutItemCopyWithImpl<$Res>
    implements _$AboutItemCopyWith<$Res> {
  __$AboutItemCopyWithImpl(this._self, this._then);

  final _AboutItem _self;
  final $Res Function(_AboutItem) _then;

/// Create a copy of AboutItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,}) {
  return _then(_AboutItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
