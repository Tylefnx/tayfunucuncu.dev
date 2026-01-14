import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
sealed class Project with _$Project {
  const factory Project({
    required String title,
    required String description,
    required List<String> techStack,
    String? link,
    String? imageUrl,
  }) = _Project;
  const Project._();

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
