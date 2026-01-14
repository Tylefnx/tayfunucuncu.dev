// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceItem _$ServiceItemFromJson(Map<String, dynamic> json) => _ServiceItem(
  title: json['title'] as String,
  desc: json['desc'] as String,
  icon: const IconDataConverter().fromJson((json['icon'] as num).toInt()),
  color: const ColorConverter().fromJson((json['color'] as num).toInt()),
);

Map<String, dynamic> _$ServiceItemToJson(_ServiceItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'icon': const IconDataConverter().toJson(instance.icon),
      'color': const ColorConverter().toJson(instance.color),
    };
