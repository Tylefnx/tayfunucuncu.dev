// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TerminalNotifier)
final terminalProvider = TerminalNotifierProvider._();

final class TerminalNotifierProvider
    extends $NotifierProvider<TerminalNotifier, List<TerminalLine>> {
  TerminalNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'terminalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$terminalNotifierHash();

  @$internal
  @override
  TerminalNotifier create() => TerminalNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TerminalLine> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TerminalLine>>(value),
    );
  }
}

String _$terminalNotifierHash() => r'60624e66640c5853bffb00700fa0d7feabcc03c3';

abstract class _$TerminalNotifier extends $Notifier<List<TerminalLine>> {
  List<TerminalLine> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<TerminalLine>, List<TerminalLine>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<TerminalLine>, List<TerminalLine>>,
              List<TerminalLine>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
