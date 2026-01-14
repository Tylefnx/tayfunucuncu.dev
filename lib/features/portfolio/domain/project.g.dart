// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Project _$ProjectFromJson(Map<String, dynamic> json) => _Project(
  title: json['title'] as String,
  description: json['description'] as String,
  techStack: (json['techStack'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  link: json['link'] as String?,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$ProjectToJson(_Project instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'techStack': instance.techStack,
  'link': instance.link,
  'imageUrl': instance.imageUrl,
};
