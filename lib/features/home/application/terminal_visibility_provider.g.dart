// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_visibility_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TerminalVisibility)
final terminalVisibilityProvider = TerminalVisibilityProvider._();

final class TerminalVisibilityProvider
    extends $NotifierProvider<TerminalVisibility, bool> {
  TerminalVisibilityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'terminalVisibilityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$terminalVisibilityHash();

  @$internal
  @override
  TerminalVisibility create() => TerminalVisibility();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$terminalVisibilityHash() =>
    r'0e142c4d055afac8c5982e1f91efdf09f1efa841';

abstract class _$TerminalVisibility extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
