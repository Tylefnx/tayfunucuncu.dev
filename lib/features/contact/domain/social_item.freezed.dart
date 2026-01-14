// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialItem {

@IconDataConverter() IconData get icon; String get label; String get value; String? get url;
/// Create a copy of SocialItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialItemCopyWith<SocialItem> get copyWith => _$SocialItemCopyWithImpl<SocialItem>(this as SocialItem, _$identity);

  /// Serializes this SocialItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialItem&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,label,value,url);

@override
String toString() {
  return 'SocialItem(icon: $icon, label: $label, value: $value, url: $url)';
}


}

/// @nodoc
abstract mixin class $SocialItemCopyWith<$Res>  {
  factory $SocialItemCopyWith(SocialItem value, $Res Function(SocialItem) _then) = _$SocialItemCopyWithImpl;
@useResult
$Res call({
@IconDataConverter() IconData icon, String label, String value, String? url
});




}
/// @nodoc
class _$SocialItemCopyWithImpl<$Res>
    implements $SocialItemCopyWith<$Res> {
  _$SocialItemCopyWithImpl(this._self, this._then);

  final SocialItem _self;
  final $Res Function(SocialItem) _then;

/// Create a copy of SocialItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? label = null,Object? value = null,Object? url = freezed,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialItem].
extension SocialItemPatterns on SocialItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialItem value)  $default,){
final _that = this;
switch (_that) {
case _SocialItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialItem value)?  $default,){
final _that = this;
switch (_that) {
case _SocialItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@IconDataConverter()  IconData icon,  String label,  String value,  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialItem() when $default != null:
return $default(_that.icon,_that.label,_that.value,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@IconDataConverter()  IconData icon,  String label,  String value,  String? url)  $default,) {final _that = this;
switch (_that) {
case _SocialItem():
return $default(_that.icon,_that.label,_that.value,_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@IconDataConverter()  IconData icon,  String label,  String value,  String? url)?  $default,) {final _that = this;
switch (_that) {
case _SocialItem() when $default != null:
return $default(_that.icon,_that.label,_that.value,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialItem implements SocialItem {
  const _SocialItem({@IconDataConverter() required this.icon, required this.label, required this.value, this.url});
  factory _SocialItem.fromJson(Map<String, dynamic> json) => _$SocialItemFromJson(json);

@override@IconDataConverter() final  IconData icon;
@override final  String label;
@override final  String value;
@override final  String? url;

/// Create a copy of SocialItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialItemCopyWith<_SocialItem> get copyWith => __$SocialItemCopyWithImpl<_SocialItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialItem&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,label,value,url);

@override
String toString() {
  return 'SocialItem(icon: $icon, label: $label, value: $value, url: $url)';
}


}

/// @nodoc
abstract mixin class _$SocialItemCopyWith<$Res> implements $SocialItemCopyWith<$Res> {
  factory _$SocialItemCopyWith(_SocialItem value, $Res Function(_SocialItem) _then) = __$SocialItemCopyWithImpl;
@override @useResult
$Res call({
@IconDataConverter() IconData icon, String label, String value, String? url
});




}
/// @nodoc
class __$SocialItemCopyWithImpl<$Res>
    implements _$SocialItemCopyWith<$Res> {
  __$SocialItemCopyWithImpl(this._self, this._then);

  final _SocialItem _self;
  final $Res Function(_SocialItem) _then;

/// Create a copy of SocialItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? label = null,Object? value = null,Object? url = freezed,}) {
  return _then(_SocialItem(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
