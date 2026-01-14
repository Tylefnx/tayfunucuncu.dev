import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'terminal_visibility_provider.g.dart';

@riverpod
class TerminalVisibility extends _$TerminalVisibility {
  @override
  bool build() => false;

  void toggle() => state = !state;
}
