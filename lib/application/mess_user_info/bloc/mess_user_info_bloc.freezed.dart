// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_user_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessUserInfoEvent {
  String get messName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messName) fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messName)? fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messName)? fetchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListOfUsers value) fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListOfUsers value)? fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListOfUsers value)? fetchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessUserInfoEventCopyWith<MessUserInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessUserInfoEventCopyWith<$Res> {
  factory $MessUserInfoEventCopyWith(
          MessUserInfoEvent value, $Res Function(MessUserInfoEvent) then) =
      _$MessUserInfoEventCopyWithImpl<$Res, MessUserInfoEvent>;
  @useResult
  $Res call({String messName});
}

/// @nodoc
class _$MessUserInfoEventCopyWithImpl<$Res, $Val extends MessUserInfoEvent>
    implements $MessUserInfoEventCopyWith<$Res> {
  _$MessUserInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messName = null,
  }) {
    return _then(_value.copyWith(
      messName: null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchListOfUsersImplCopyWith<$Res>
    implements $MessUserInfoEventCopyWith<$Res> {
  factory _$$FetchListOfUsersImplCopyWith(_$FetchListOfUsersImpl value,
          $Res Function(_$FetchListOfUsersImpl) then) =
      __$$FetchListOfUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messName});
}

/// @nodoc
class __$$FetchListOfUsersImplCopyWithImpl<$Res>
    extends _$MessUserInfoEventCopyWithImpl<$Res, _$FetchListOfUsersImpl>
    implements _$$FetchListOfUsersImplCopyWith<$Res> {
  __$$FetchListOfUsersImplCopyWithImpl(_$FetchListOfUsersImpl _value,
      $Res Function(_$FetchListOfUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messName = null,
  }) {
    return _then(_$FetchListOfUsersImpl(
      null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchListOfUsersImpl implements FetchListOfUsers {
  const _$FetchListOfUsersImpl(this.messName);

  @override
  final String messName;

  @override
  String toString() {
    return 'MessUserInfoEvent.fetchList(messName: $messName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchListOfUsersImpl &&
            (identical(other.messName, messName) ||
                other.messName == messName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchListOfUsersImplCopyWith<_$FetchListOfUsersImpl> get copyWith =>
      __$$FetchListOfUsersImplCopyWithImpl<_$FetchListOfUsersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messName) fetchList,
  }) {
    return fetchList(messName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messName)? fetchList,
  }) {
    return fetchList?.call(messName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messName)? fetchList,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(messName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListOfUsers value) fetchList,
  }) {
    return fetchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListOfUsers value)? fetchList,
  }) {
    return fetchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListOfUsers value)? fetchList,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(this);
    }
    return orElse();
  }
}

abstract class FetchListOfUsers implements MessUserInfoEvent {
  const factory FetchListOfUsers(final String messName) =
      _$FetchListOfUsersImpl;

  @override
  String get messName;
  @override
  @JsonKey(ignore: true)
  _$$FetchListOfUsersImplCopyWith<_$FetchListOfUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessUserInfoState {
  List<UserClass> get listOfUsers => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  Option<FirestoreFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessUserInfoStateCopyWith<MessUserInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessUserInfoStateCopyWith<$Res> {
  factory $MessUserInfoStateCopyWith(
          MessUserInfoState value, $Res Function(MessUserInfoState) then) =
      _$MessUserInfoStateCopyWithImpl<$Res, MessUserInfoState>;
  @useResult
  $Res call(
      {List<UserClass> listOfUsers,
      bool isFetching,
      Option<FirestoreFailure> failure});
}

/// @nodoc
class _$MessUserInfoStateCopyWithImpl<$Res, $Val extends MessUserInfoState>
    implements $MessUserInfoStateCopyWith<$Res> {
  _$MessUserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfUsers = null,
    Object? isFetching = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      listOfUsers: null == listOfUsers
          ? _value.listOfUsers
          : listOfUsers // ignore: cast_nullable_to_non_nullable
              as List<UserClass>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$messStateImplCopyWith<$Res>
    implements $MessUserInfoStateCopyWith<$Res> {
  factory _$$messStateImplCopyWith(
          _$messStateImpl value, $Res Function(_$messStateImpl) then) =
      __$$messStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserClass> listOfUsers,
      bool isFetching,
      Option<FirestoreFailure> failure});
}

/// @nodoc
class __$$messStateImplCopyWithImpl<$Res>
    extends _$MessUserInfoStateCopyWithImpl<$Res, _$messStateImpl>
    implements _$$messStateImplCopyWith<$Res> {
  __$$messStateImplCopyWithImpl(
      _$messStateImpl _value, $Res Function(_$messStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfUsers = null,
    Object? isFetching = null,
    Object? failure = null,
  }) {
    return _then(_$messStateImpl(
      listOfUsers: null == listOfUsers
          ? _value._listOfUsers
          : listOfUsers // ignore: cast_nullable_to_non_nullable
              as List<UserClass>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
    ));
  }
}

/// @nodoc

class _$messStateImpl implements _messState {
  const _$messStateImpl(
      {required final List<UserClass> listOfUsers,
      required this.isFetching,
      required this.failure})
      : _listOfUsers = listOfUsers;

  final List<UserClass> _listOfUsers;
  @override
  List<UserClass> get listOfUsers {
    if (_listOfUsers is EqualUnmodifiableListView) return _listOfUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfUsers);
  }

  @override
  final bool isFetching;
  @override
  final Option<FirestoreFailure> failure;

  @override
  String toString() {
    return 'MessUserInfoState(listOfUsers: $listOfUsers, isFetching: $isFetching, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$messStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfUsers, _listOfUsers) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listOfUsers), isFetching, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$messStateImplCopyWith<_$messStateImpl> get copyWith =>
      __$$messStateImplCopyWithImpl<_$messStateImpl>(this, _$identity);
}

abstract class _messState implements MessUserInfoState {
  const factory _messState(
      {required final List<UserClass> listOfUsers,
      required final bool isFetching,
      required final Option<FirestoreFailure> failure}) = _$messStateImpl;

  @override
  List<UserClass> get listOfUsers;
  @override
  bool get isFetching;
  @override
  Option<FirestoreFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$messStateImplCopyWith<_$messStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
