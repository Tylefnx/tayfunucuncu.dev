import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_item.freezed.dart';
part 'about_item.g.dart';

@freezed
sealed class AboutItem with _$AboutItem {
  const factory AboutItem({required String title, required String content}) =
      _AboutItem;

  factory AboutItem.fromJson(Map<String, dynamic> json) =>
      _$AboutItemFromJson(json);
}
