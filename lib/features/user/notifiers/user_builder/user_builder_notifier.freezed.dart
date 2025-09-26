// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_builder_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserBuilderState {

 User get original; User get editable;
/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBuilderStateCopyWith<UserBuilderState> get copyWith => _$UserBuilderStateCopyWithImpl<UserBuilderState>(this as UserBuilderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBuilderState&&(identical(other.original, original) || other.original == original)&&(identical(other.editable, editable) || other.editable == editable));
}


@override
int get hashCode => Object.hash(runtimeType,original,editable);

@override
String toString() {
  return 'UserBuilderState(original: $original, editable: $editable)';
}


}

/// @nodoc
abstract mixin class $UserBuilderStateCopyWith<$Res>  {
  factory $UserBuilderStateCopyWith(UserBuilderState value, $Res Function(UserBuilderState) _then) = _$UserBuilderStateCopyWithImpl;
@useResult
$Res call({
 User original, User editable
});


$UserCopyWith<$Res> get original;$UserCopyWith<$Res> get editable;

}
/// @nodoc
class _$UserBuilderStateCopyWithImpl<$Res>
    implements $UserBuilderStateCopyWith<$Res> {
  _$UserBuilderStateCopyWithImpl(this._self, this._then);

  final UserBuilderState _self;
  final $Res Function(UserBuilderState) _then;

/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? original = null,Object? editable = null,}) {
  return _then(_self.copyWith(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as User,editable: null == editable ? _self.editable : editable // ignore: cast_nullable_to_non_nullable
as User,
  ));
}
/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get original {
  
  return $UserCopyWith<$Res>(_self.original, (value) {
    return _then(_self.copyWith(original: value));
  });
}/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get editable {
  
  return $UserCopyWith<$Res>(_self.editable, (value) {
    return _then(_self.copyWith(editable: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserBuilderState].
extension UserBuilderStatePatterns on UserBuilderState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserBuilderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserBuilderState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserBuilderState value)  $default,){
final _that = this;
switch (_that) {
case _UserBuilderState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserBuilderState value)?  $default,){
final _that = this;
switch (_that) {
case _UserBuilderState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User original,  User editable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserBuilderState() when $default != null:
return $default(_that.original,_that.editable);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User original,  User editable)  $default,) {final _that = this;
switch (_that) {
case _UserBuilderState():
return $default(_that.original,_that.editable);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User original,  User editable)?  $default,) {final _that = this;
switch (_that) {
case _UserBuilderState() when $default != null:
return $default(_that.original,_that.editable);case _:
  return null;

}
}

}

/// @nodoc


class _UserBuilderState extends UserBuilderState {
  const _UserBuilderState({required this.original, required this.editable}): super._();
  

@override final  User original;
@override final  User editable;

/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserBuilderStateCopyWith<_UserBuilderState> get copyWith => __$UserBuilderStateCopyWithImpl<_UserBuilderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBuilderState&&(identical(other.original, original) || other.original == original)&&(identical(other.editable, editable) || other.editable == editable));
}


@override
int get hashCode => Object.hash(runtimeType,original,editable);

@override
String toString() {
  return 'UserBuilderState(original: $original, editable: $editable)';
}


}

/// @nodoc
abstract mixin class _$UserBuilderStateCopyWith<$Res> implements $UserBuilderStateCopyWith<$Res> {
  factory _$UserBuilderStateCopyWith(_UserBuilderState value, $Res Function(_UserBuilderState) _then) = __$UserBuilderStateCopyWithImpl;
@override @useResult
$Res call({
 User original, User editable
});


@override $UserCopyWith<$Res> get original;@override $UserCopyWith<$Res> get editable;

}
/// @nodoc
class __$UserBuilderStateCopyWithImpl<$Res>
    implements _$UserBuilderStateCopyWith<$Res> {
  __$UserBuilderStateCopyWithImpl(this._self, this._then);

  final _UserBuilderState _self;
  final $Res Function(_UserBuilderState) _then;

/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? original = null,Object? editable = null,}) {
  return _then(_UserBuilderState(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as User,editable: null == editable ? _self.editable : editable // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get original {
  
  return $UserCopyWith<$Res>(_self.original, (value) {
    return _then(_self.copyWith(original: value));
  });
}/// Create a copy of UserBuilderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get editable {
  
  return $UserCopyWith<$Res>(_self.editable, (value) {
    return _then(_self.copyWith(editable: value));
  });
}
}

// dart format on
