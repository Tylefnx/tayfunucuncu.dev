// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceItem {

 String get title; String get desc;@IconDataConverter() IconData get icon;@ColorConverter() Color get color;
/// Create a copy of ServiceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceItemCopyWith<ServiceItem> get copyWith => _$ServiceItemCopyWithImpl<ServiceItem>(this as ServiceItem, _$identity);

  /// Serializes this ServiceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceItem&&(identical(other.title, title) || other.title == title)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,desc,icon,color);

@override
String toString() {
  return 'ServiceItem(title: $title, desc: $desc, icon: $icon, color: $color)';
}


}

/// @nodoc
abstract mixin class $ServiceItemCopyWith<$Res>  {
  factory $ServiceItemCopyWith(ServiceItem value, $Res Function(ServiceItem) _then) = _$ServiceItemCopyWithImpl;
@useResult
$Res call({
 String title, String desc,@IconDataConverter() IconData icon,@ColorConverter() Color color
});




}
/// @nodoc
class _$ServiceItemCopyWithImpl<$Res>
    implements $ServiceItemCopyWith<$Res> {
  _$ServiceItemCopyWithImpl(this._self, this._then);

  final ServiceItem _self;
  final $Res Function(ServiceItem) _then;

/// Create a copy of ServiceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? desc = null,Object? icon = null,Object? color = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceItem].
extension ServiceItemPatterns on ServiceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceItem value)  $default,){
final _that = this;
switch (_that) {
case _ServiceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceItem value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String desc, @IconDataConverter()  IconData icon, @ColorConverter()  Color color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceItem() when $default != null:
return $default(_that.title,_that.desc,_that.icon,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String desc, @IconDataConverter()  IconData icon, @ColorConverter()  Color color)  $default,) {final _that = this;
switch (_that) {
case _ServiceItem():
return $default(_that.title,_that.desc,_that.icon,_that.color);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String desc, @IconDataConverter()  IconData icon, @ColorConverter()  Color color)?  $default,) {final _that = this;
switch (_that) {
case _ServiceItem() when $default != null:
return $default(_that.title,_that.desc,_that.icon,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceItem extends ServiceItem {
  const _ServiceItem({required this.title, required this.desc, @IconDataConverter() required this.icon, @ColorConverter() required this.color}): super._();
  factory _ServiceItem.fromJson(Map<String, dynamic> json) => _$ServiceItemFromJson(json);

@override final  String title;
@override final  String desc;
@override@IconDataConverter() final  IconData icon;
@override@ColorConverter() final  Color color;

/// Create a copy of ServiceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceItemCopyWith<_ServiceItem> get copyWith => __$ServiceItemCopyWithImpl<_ServiceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceItem&&(identical(other.title, title) || other.title == title)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,desc,icon,color);

@override
String toString() {
  return 'ServiceItem(title: $title, desc: $desc, icon: $icon, color: $color)';
}


}

/// @nodoc
abstract mixin class _$ServiceItemCopyWith<$Res> implements $ServiceItemCopyWith<$Res> {
  factory _$ServiceItemCopyWith(_ServiceItem value, $Res Function(_ServiceItem) _then) = __$ServiceItemCopyWithImpl;
@override @useResult
$Res call({
 String title, String desc,@IconDataConverter() IconData icon,@ColorConverter() Color color
});




}
/// @nodoc
class __$ServiceItemCopyWithImpl<$Res>
    implements _$ServiceItemCopyWith<$Res> {
  __$ServiceItemCopyWithImpl(this._self, this._then);

  final _ServiceItem _self;
  final $Res Function(_ServiceItem) _then;

/// Create a copy of ServiceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? desc = null,Object? icon = null,Object? color = null,}) {
  return _then(_ServiceItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
