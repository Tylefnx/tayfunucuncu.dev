import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_item.freezed.dart';
part 'service_item.g.dart';

@freezed
sealed class ServiceItem with _$ServiceItem {
  const factory ServiceItem({
    required String title,
    required String desc,
    @IconDataConverter() required IconData icon,
    @ColorConverter() required Color color,
  }) = _ServiceItem;
  const ServiceItem._(); // Buradaki isimlendirme hata almamak için kritiktir

  factory ServiceItem.fromJson(Map<String, dynamic> json) =>
      _$ServiceItemFromJson(json);
}

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();
  @override
  Color fromJson(int json) => Color(json);
  @override
  int toJson(Color object) => object.value;
}

class IconDataConverter implements JsonConverter<IconData, int> {
  const IconDataConverter();
  @override
  IconData fromJson(int json) => IconData(json, fontFamily: 'MaterialIcons');
  @override
  int toJson(IconData object) => object.codePoint;
}
