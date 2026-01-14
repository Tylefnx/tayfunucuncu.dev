import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_item.freezed.dart';
part 'social_item.g.dart';

@freezed
sealed class SocialItem with _$SocialItem {
  const factory SocialItem({
    @IconDataConverter() required IconData icon,
    required String label,
    required String value,
    String? url,
  }) = _SocialItem;

  factory SocialItem.fromJson(Map<String, dynamic> json) =>
      _$SocialItemFromJson(json);
}

class IconDataConverter implements JsonConverter<IconData, int> {
  const IconDataConverter();
  @override
  IconData fromJson(int json) => IconData(json, fontFamily: 'MaterialIcons');
  @override
  int toJson(IconData object) => object.codePoint;
}
