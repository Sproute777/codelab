// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChangedLoginEvent value) usernameChanged,
    required TResult Function(_PasswordChangedLoginEvent value) passwordChanged,
    required TResult Function(_SubmittedLoginEvent value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult? Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult? Function(_SubmittedLoginEvent value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult Function(_SubmittedLoginEvent value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UsernameChangedLoginEventCopyWith<$Res> {
  factory _$$_UsernameChangedLoginEventCopyWith(
          _$_UsernameChangedLoginEvent value,
          $Res Function(_$_UsernameChangedLoginEvent) then) =
      __$$_UsernameChangedLoginEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$_UsernameChangedLoginEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_UsernameChangedLoginEvent>
    implements _$$_UsernameChangedLoginEventCopyWith<$Res> {
  __$$_UsernameChangedLoginEventCopyWithImpl(
      _$_UsernameChangedLoginEvent _value,
      $Res Function(_$_UsernameChangedLoginEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$_UsernameChangedLoginEvent(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChangedLoginEvent implements _UsernameChangedLoginEvent {
  const _$_UsernameChangedLoginEvent(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameChangedLoginEvent &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsernameChangedLoginEventCopyWith<_$_UsernameChangedLoginEvent>
      get copyWith => __$$_UsernameChangedLoginEventCopyWithImpl<
          _$_UsernameChangedLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChangedLoginEvent value) usernameChanged,
    required TResult Function(_PasswordChangedLoginEvent value) passwordChanged,
    required TResult Function(_SubmittedLoginEvent value) submitted,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult? Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult? Function(_SubmittedLoginEvent value)? submitted,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult Function(_SubmittedLoginEvent value)? submitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChangedLoginEvent implements LoginEvent {
  const factory _UsernameChangedLoginEvent(final String username) =
      _$_UsernameChangedLoginEvent;

  String get username;
  @JsonKey(ignore: true)
  _$$_UsernameChangedLoginEventCopyWith<_$_UsernameChangedLoginEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedLoginEventCopyWith<$Res> {
  factory _$$_PasswordChangedLoginEventCopyWith(
          _$_PasswordChangedLoginEvent value,
          $Res Function(_$_PasswordChangedLoginEvent) then) =
      __$$_PasswordChangedLoginEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedLoginEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_PasswordChangedLoginEvent>
    implements _$$_PasswordChangedLoginEventCopyWith<$Res> {
  __$$_PasswordChangedLoginEventCopyWithImpl(
      _$_PasswordChangedLoginEvent _value,
      $Res Function(_$_PasswordChangedLoginEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChangedLoginEvent(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChangedLoginEvent implements _PasswordChangedLoginEvent {
  const _$_PasswordChangedLoginEvent(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChangedLoginEvent &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedLoginEventCopyWith<_$_PasswordChangedLoginEvent>
      get copyWith => __$$_PasswordChangedLoginEventCopyWithImpl<
          _$_PasswordChangedLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChangedLoginEvent value) usernameChanged,
    required TResult Function(_PasswordChangedLoginEvent value) passwordChanged,
    required TResult Function(_SubmittedLoginEvent value) submitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult? Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult? Function(_SubmittedLoginEvent value)? submitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult Function(_SubmittedLoginEvent value)? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChangedLoginEvent implements LoginEvent {
  const factory _PasswordChangedLoginEvent(final String password) =
      _$_PasswordChangedLoginEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedLoginEventCopyWith<_$_PasswordChangedLoginEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmittedLoginEventCopyWith<$Res> {
  factory _$$_SubmittedLoginEventCopyWith(_$_SubmittedLoginEvent value,
          $Res Function(_$_SubmittedLoginEvent) then) =
      __$$_SubmittedLoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedLoginEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_SubmittedLoginEvent>
    implements _$$_SubmittedLoginEventCopyWith<$Res> {
  __$$_SubmittedLoginEventCopyWithImpl(_$_SubmittedLoginEvent _value,
      $Res Function(_$_SubmittedLoginEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubmittedLoginEvent implements _SubmittedLoginEvent {
  const _$_SubmittedLoginEvent();

  @override
  String toString() {
    return 'LoginEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmittedLoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChangedLoginEvent value) usernameChanged,
    required TResult Function(_PasswordChangedLoginEvent value) passwordChanged,
    required TResult Function(_SubmittedLoginEvent value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult? Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult? Function(_SubmittedLoginEvent value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChangedLoginEvent value)? usernameChanged,
    TResult Function(_PasswordChangedLoginEvent value)? passwordChanged,
    TResult Function(_SubmittedLoginEvent value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _SubmittedLoginEvent implements LoginEvent {
  const factory _SubmittedLoginEvent() = _$_SubmittedLoginEvent;
}

/// @nodoc
mixin _$LoginState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({FormzStatus status, Username username, Password password});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialLoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$InitialLoginStateCopyWith(
          _$InitialLoginState value, $Res Function(_$InitialLoginState) then) =
      __$$InitialLoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzStatus status, Username username, Password password});
}

/// @nodoc
class __$$InitialLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialLoginState>
    implements _$$InitialLoginStateCopyWith<$Res> {
  __$$InitialLoginStateCopyWithImpl(
      _$InitialLoginState _value, $Res Function(_$InitialLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$InitialLoginState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$InitialLoginState implements InitialLoginState {
  const _$InitialLoginState(
      {this.status = FormzStatus.pure,
      this.username = const Username.pure(),
      this.password = const Password.pure()});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final Username username;
  @override
  @JsonKey()
  final Password password;

  @override
  String toString() {
    return 'LoginState(status: $status, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialLoginState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialLoginStateCopyWith<_$InitialLoginState> get copyWith =>
      __$$InitialLoginStateCopyWithImpl<_$InitialLoginState>(this, _$identity);
}

abstract class InitialLoginState implements LoginState {
  const factory InitialLoginState(
      {final FormzStatus status,
      final Username username,
      final Password password}) = _$InitialLoginState;

  @override
  FormzStatus get status;
  @override
  Username get username;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$InitialLoginStateCopyWith<_$InitialLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
