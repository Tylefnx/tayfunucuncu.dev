// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialItem _$SocialItemFromJson(Map<String, dynamic> json) => _SocialItem(
  icon: const IconDataConverter().fromJson((json['icon'] as num).toInt()),
  label: json['label'] as String,
  value: json['value'] as String,
  url: json['url'] as String?,
);

Map<String, dynamic> _$SocialItemToJson(_SocialItem instance) =>
    <String, dynamic>{
      'icon': const IconDataConverter().toJson(instance.icon),
      'label': instance.label,
      'value': instance.value,
      'url': instance.url,
    };
