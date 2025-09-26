// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_builder_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userBuilderNotifierHash() =>
    r'e0935f6f7c0b916813fce327126c57fe37d968e2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UserBuilderNotifier
    extends BuildlessAutoDisposeNotifier<UserBuilderState> {
  late final User initialUser;

  UserBuilderState build(User initialUser);
}

/// See also [UserBuilderNotifier].
@ProviderFor(UserBuilderNotifier)
const userBuilderNotifierProvider = UserBuilderNotifierFamily();

/// See also [UserBuilderNotifier].
class UserBuilderNotifierFamily extends Family<UserBuilderState> {
  /// See also [UserBuilderNotifier].
  const UserBuilderNotifierFamily();

  /// See also [UserBuilderNotifier].
  UserBuilderNotifierProvider call(User initialUser) {
    return UserBuilderNotifierProvider(initialUser);
  }

  @override
  UserBuilderNotifierProvider getProviderOverride(
    covariant UserBuilderNotifierProvider provider,
  ) {
    return call(provider.initialUser);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userBuilderNotifierProvider';
}

/// See also [UserBuilderNotifier].
class UserBuilderNotifierProvider
    extends
        AutoDisposeNotifierProviderImpl<UserBuilderNotifier, UserBuilderState> {
  /// See also [UserBuilderNotifier].
  UserBuilderNotifierProvider(User initialUser)
    : this._internal(
        () => UserBuilderNotifier()..initialUser = initialUser,
        from: userBuilderNotifierProvider,
        name: r'userBuilderNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userBuilderNotifierHash,
        dependencies: UserBuilderNotifierFamily._dependencies,
        allTransitiveDependencies:
            UserBuilderNotifierFamily._allTransitiveDependencies,
        initialUser: initialUser,
      );

  UserBuilderNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialUser,
  }) : super.internal();

  final User initialUser;

  @override
  UserBuilderState runNotifierBuild(covariant UserBuilderNotifier notifier) {
    return notifier.build(initialUser);
  }

  @override
  Override overrideWith(UserBuilderNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserBuilderNotifierProvider._internal(
        () => create()..initialUser = initialUser,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialUser: initialUser,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UserBuilderNotifier, UserBuilderState>
  createElement() {
    return _UserBuilderNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserBuilderNotifierProvider &&
        other.initialUser == initialUser;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialUser.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserBuilderNotifierRef
    on AutoDisposeNotifierProviderRef<UserBuilderState> {
  /// The parameter `initialUser` of this provider.
  User get initialUser;
}

class _UserBuilderNotifierProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          UserBuilderNotifier,
          UserBuilderState
        >
    with UserBuilderNotifierRef {
  _UserBuilderNotifierProviderElement(super.provider);

  @override
  User get initialUser => (origin as UserBuilderNotifierProvider).initialUser;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
