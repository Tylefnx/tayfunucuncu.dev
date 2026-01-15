// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrollable_section.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentSectionNotifier)
final currentSectionProvider = CurrentSectionNotifierProvider._();

final class CurrentSectionNotifierProvider
    extends $NotifierProvider<CurrentSectionNotifier, int> {
  CurrentSectionNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentSectionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentSectionNotifierHash();

  @$internal
  @override
  CurrentSectionNotifier create() => CurrentSectionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$currentSectionNotifierHash() =>
    r'70f12509b43b4f4a165e02c6b7b2b497655b2b57';

abstract class _$CurrentSectionNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
