// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() logoutRequested,
    required TResult Function() statusSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? logoutRequested,
    TResult? Function()? statusSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? logoutRequested,
    TResult Function()? statusSubscription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAuthEvent value) read,
    required TResult Function(LogoutRequestedAuthEvent value) logoutRequested,
    required TResult Function(_StatusSubscriptionAuthEvent value)
        statusSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadAuthEvent value)? read,
    TResult? Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult? Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAuthEvent value)? read,
    TResult Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReadAuthEventCopyWith<$Res> {
  factory _$$ReadAuthEventCopyWith(
          _$ReadAuthEvent value, $Res Function(_$ReadAuthEvent) then) =
      __$$ReadAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ReadAuthEvent>
    implements _$$ReadAuthEventCopyWith<$Res> {
  __$$ReadAuthEventCopyWithImpl(
      _$ReadAuthEvent _value, $Res Function(_$ReadAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadAuthEvent extends ReadAuthEvent {
  const _$ReadAuthEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() logoutRequested,
    required TResult Function() statusSubscription,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? logoutRequested,
    TResult? Function()? statusSubscription,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? logoutRequested,
    TResult Function()? statusSubscription,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAuthEvent value) read,
    required TResult Function(LogoutRequestedAuthEvent value) logoutRequested,
    required TResult Function(_StatusSubscriptionAuthEvent value)
        statusSubscription,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadAuthEvent value)? read,
    TResult? Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult? Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAuthEvent value)? read,
    TResult Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadAuthEvent extends AuthEvent {
  const factory ReadAuthEvent() = _$ReadAuthEvent;
  const ReadAuthEvent._() : super._();
}

/// @nodoc
abstract class _$$LogoutRequestedAuthEventCopyWith<$Res> {
  factory _$$LogoutRequestedAuthEventCopyWith(_$LogoutRequestedAuthEvent value,
          $Res Function(_$LogoutRequestedAuthEvent) then) =
      __$$LogoutRequestedAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutRequestedAuthEvent>
    implements _$$LogoutRequestedAuthEventCopyWith<$Res> {
  __$$LogoutRequestedAuthEventCopyWithImpl(_$LogoutRequestedAuthEvent _value,
      $Res Function(_$LogoutRequestedAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutRequestedAuthEvent extends LogoutRequestedAuthEvent {
  const _$LogoutRequestedAuthEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutRequestedAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() logoutRequested,
    required TResult Function() statusSubscription,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? logoutRequested,
    TResult? Function()? statusSubscription,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? logoutRequested,
    TResult Function()? statusSubscription,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAuthEvent value) read,
    required TResult Function(LogoutRequestedAuthEvent value) logoutRequested,
    required TResult Function(_StatusSubscriptionAuthEvent value)
        statusSubscription,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadAuthEvent value)? read,
    TResult? Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult? Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAuthEvent value)? read,
    TResult Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequestedAuthEvent extends AuthEvent {
  const factory LogoutRequestedAuthEvent() = _$LogoutRequestedAuthEvent;
  const LogoutRequestedAuthEvent._() : super._();
}

/// @nodoc
abstract class _$$_StatusSubscriptionAuthEventCopyWith<$Res> {
  factory _$$_StatusSubscriptionAuthEventCopyWith(
          _$_StatusSubscriptionAuthEvent value,
          $Res Function(_$_StatusSubscriptionAuthEvent) then) =
      __$$_StatusSubscriptionAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatusSubscriptionAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_StatusSubscriptionAuthEvent>
    implements _$$_StatusSubscriptionAuthEventCopyWith<$Res> {
  __$$_StatusSubscriptionAuthEventCopyWithImpl(
      _$_StatusSubscriptionAuthEvent _value,
      $Res Function(_$_StatusSubscriptionAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StatusSubscriptionAuthEvent extends _StatusSubscriptionAuthEvent {
  const _$_StatusSubscriptionAuthEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.statusSubscription()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusSubscriptionAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() logoutRequested,
    required TResult Function() statusSubscription,
  }) {
    return statusSubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? logoutRequested,
    TResult? Function()? statusSubscription,
  }) {
    return statusSubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? logoutRequested,
    TResult Function()? statusSubscription,
    required TResult orElse(),
  }) {
    if (statusSubscription != null) {
      return statusSubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAuthEvent value) read,
    required TResult Function(LogoutRequestedAuthEvent value) logoutRequested,
    required TResult Function(_StatusSubscriptionAuthEvent value)
        statusSubscription,
  }) {
    return statusSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadAuthEvent value)? read,
    TResult? Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult? Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
  }) {
    return statusSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAuthEvent value)? read,
    TResult Function(LogoutRequestedAuthEvent value)? logoutRequested,
    TResult Function(_StatusSubscriptionAuthEvent value)? statusSubscription,
    required TResult orElse(),
  }) {
    if (statusSubscription != null) {
      return statusSubscription(this);
    }
    return orElse();
  }
}

abstract class _StatusSubscriptionAuthEvent extends AuthEvent {
  const factory _StatusSubscriptionAuthEvent() = _$_StatusSubscriptionAuthEvent;
  const _StatusSubscriptionAuthEvent._() : super._();
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unregistered,
    required TResult Function(User user) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unregistered,
    TResult? Function(User user)? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unregistered,
    TResult Function(User user)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownAuthState value) unknown,
    required TResult Function(UndregistredAuthState value) unregistered,
    required TResult Function(RegisteredAuthState value) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownAuthState value)? unknown,
    TResult? Function(UndregistredAuthState value)? unregistered,
    TResult? Function(RegisteredAuthState value)? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownAuthState value)? unknown,
    TResult Function(UndregistredAuthState value)? unregistered,
    TResult Function(RegisteredAuthState value)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnknownAuthStateCopyWith<$Res> {
  factory _$$_UnknownAuthStateCopyWith(
          _$_UnknownAuthState value, $Res Function(_$_UnknownAuthState) then) =
      __$$_UnknownAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnknownAuthState>
    implements _$$_UnknownAuthStateCopyWith<$Res> {
  __$$_UnknownAuthStateCopyWithImpl(
      _$_UnknownAuthState _value, $Res Function(_$_UnknownAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnknownAuthState extends _UnknownAuthState {
  const _$_UnknownAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnknownAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unregistered,
    required TResult Function(User user) registered,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unregistered,
    TResult? Function(User user)? registered,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unregistered,
    TResult Function(User user)? registered,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownAuthState value) unknown,
    required TResult Function(UndregistredAuthState value) unregistered,
    required TResult Function(RegisteredAuthState value) registered,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownAuthState value)? unknown,
    TResult? Function(UndregistredAuthState value)? unregistered,
    TResult? Function(RegisteredAuthState value)? registered,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownAuthState value)? unknown,
    TResult Function(UndregistredAuthState value)? unregistered,
    TResult Function(RegisteredAuthState value)? registered,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownAuthState extends AuthState {
  const factory _UnknownAuthState() = _$_UnknownAuthState;
  const _UnknownAuthState._() : super._();
}

/// @nodoc
abstract class _$$UndregistredAuthStateCopyWith<$Res> {
  factory _$$UndregistredAuthStateCopyWith(_$UndregistredAuthState value,
          $Res Function(_$UndregistredAuthState) then) =
      __$$UndregistredAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UndregistredAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UndregistredAuthState>
    implements _$$UndregistredAuthStateCopyWith<$Res> {
  __$$UndregistredAuthStateCopyWithImpl(_$UndregistredAuthState _value,
      $Res Function(_$UndregistredAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UndregistredAuthState extends UndregistredAuthState {
  const _$UndregistredAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.unregistered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UndregistredAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unregistered,
    required TResult Function(User user) registered,
  }) {
    return unregistered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unregistered,
    TResult? Function(User user)? registered,
  }) {
    return unregistered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unregistered,
    TResult Function(User user)? registered,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownAuthState value) unknown,
    required TResult Function(UndregistredAuthState value) unregistered,
    required TResult Function(RegisteredAuthState value) registered,
  }) {
    return unregistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownAuthState value)? unknown,
    TResult? Function(UndregistredAuthState value)? unregistered,
    TResult? Function(RegisteredAuthState value)? registered,
  }) {
    return unregistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownAuthState value)? unknown,
    TResult Function(UndregistredAuthState value)? unregistered,
    TResult Function(RegisteredAuthState value)? registered,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(this);
    }
    return orElse();
  }
}

abstract class UndregistredAuthState extends AuthState {
  const factory UndregistredAuthState() = _$UndregistredAuthState;
  const UndregistredAuthState._() : super._();
}

/// @nodoc
abstract class _$$RegisteredAuthStateCopyWith<$Res> {
  factory _$$RegisteredAuthStateCopyWith(_$RegisteredAuthState value,
          $Res Function(_$RegisteredAuthState) then) =
      __$$RegisteredAuthStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$RegisteredAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisteredAuthState>
    implements _$$RegisteredAuthStateCopyWith<$Res> {
  __$$RegisteredAuthStateCopyWithImpl(
      _$RegisteredAuthState _value, $Res Function(_$RegisteredAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RegisteredAuthState(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$RegisteredAuthState extends RegisteredAuthState {
  const _$RegisteredAuthState(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.registered(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredAuthState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredAuthStateCopyWith<_$RegisteredAuthState> get copyWith =>
      __$$RegisteredAuthStateCopyWithImpl<_$RegisteredAuthState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unregistered,
    required TResult Function(User user) registered,
  }) {
    return registered(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unregistered,
    TResult? Function(User user)? registered,
  }) {
    return registered?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unregistered,
    TResult Function(User user)? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownAuthState value) unknown,
    required TResult Function(UndregistredAuthState value) unregistered,
    required TResult Function(RegisteredAuthState value) registered,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownAuthState value)? unknown,
    TResult? Function(UndregistredAuthState value)? unregistered,
    TResult? Function(RegisteredAuthState value)? registered,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownAuthState value)? unknown,
    TResult Function(UndregistredAuthState value)? unregistered,
    TResult Function(RegisteredAuthState value)? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class RegisteredAuthState extends AuthState {
  const factory RegisteredAuthState(final User user) = _$RegisteredAuthState;
  const RegisteredAuthState._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$RegisteredAuthStateCopyWith<_$RegisteredAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
