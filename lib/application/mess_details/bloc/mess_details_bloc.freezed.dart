// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Mess> messList) fetchMessList,
    required TResult Function(Mess mess) addMess,
    required TResult Function(String messName) deleteMess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Mess> messList)? fetchMessList,
    TResult? Function(Mess mess)? addMess,
    TResult? Function(String messName)? deleteMess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Mess> messList)? fetchMessList,
    TResult Function(Mess mess)? addMess,
    TResult Function(String messName)? deleteMess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessList value) fetchMessList,
    required TResult Function(AddMess value) addMess,
    required TResult Function(DeleteMess value) deleteMess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessList value)? fetchMessList,
    TResult? Function(AddMess value)? addMess,
    TResult? Function(DeleteMess value)? deleteMess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessList value)? fetchMessList,
    TResult Function(AddMess value)? addMess,
    TResult Function(DeleteMess value)? deleteMess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessDetailsEventCopyWith<$Res> {
  factory $MessDetailsEventCopyWith(
          MessDetailsEvent value, $Res Function(MessDetailsEvent) then) =
      _$MessDetailsEventCopyWithImpl<$Res, MessDetailsEvent>;
}

/// @nodoc
class _$MessDetailsEventCopyWithImpl<$Res, $Val extends MessDetailsEvent>
    implements $MessDetailsEventCopyWith<$Res> {
  _$MessDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchMessListImplCopyWith<$Res> {
  factory _$$FetchMessListImplCopyWith(
          _$FetchMessListImpl value, $Res Function(_$FetchMessListImpl) then) =
      __$$FetchMessListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Mess> messList});
}

/// @nodoc
class __$$FetchMessListImplCopyWithImpl<$Res>
    extends _$MessDetailsEventCopyWithImpl<$Res, _$FetchMessListImpl>
    implements _$$FetchMessListImplCopyWith<$Res> {
  __$$FetchMessListImplCopyWithImpl(
      _$FetchMessListImpl _value, $Res Function(_$FetchMessListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messList = null,
  }) {
    return _then(_$FetchMessListImpl(
      null == messList
          ? _value._messList
          : messList // ignore: cast_nullable_to_non_nullable
              as List<Mess>,
    ));
  }
}

/// @nodoc

class _$FetchMessListImpl implements FetchMessList {
  const _$FetchMessListImpl(final List<Mess> messList) : _messList = messList;

  final List<Mess> _messList;
  @override
  List<Mess> get messList {
    if (_messList is EqualUnmodifiableListView) return _messList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messList);
  }

  @override
  String toString() {
    return 'MessDetailsEvent.fetchMessList(messList: $messList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMessListImpl &&
            const DeepCollectionEquality().equals(other._messList, _messList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMessListImplCopyWith<_$FetchMessListImpl> get copyWith =>
      __$$FetchMessListImplCopyWithImpl<_$FetchMessListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Mess> messList) fetchMessList,
    required TResult Function(Mess mess) addMess,
    required TResult Function(String messName) deleteMess,
  }) {
    return fetchMessList(messList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Mess> messList)? fetchMessList,
    TResult? Function(Mess mess)? addMess,
    TResult? Function(String messName)? deleteMess,
  }) {
    return fetchMessList?.call(messList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Mess> messList)? fetchMessList,
    TResult Function(Mess mess)? addMess,
    TResult Function(String messName)? deleteMess,
    required TResult orElse(),
  }) {
    if (fetchMessList != null) {
      return fetchMessList(messList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessList value) fetchMessList,
    required TResult Function(AddMess value) addMess,
    required TResult Function(DeleteMess value) deleteMess,
  }) {
    return fetchMessList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessList value)? fetchMessList,
    TResult? Function(AddMess value)? addMess,
    TResult? Function(DeleteMess value)? deleteMess,
  }) {
    return fetchMessList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessList value)? fetchMessList,
    TResult Function(AddMess value)? addMess,
    TResult Function(DeleteMess value)? deleteMess,
    required TResult orElse(),
  }) {
    if (fetchMessList != null) {
      return fetchMessList(this);
    }
    return orElse();
  }
}

abstract class FetchMessList implements MessDetailsEvent {
  const factory FetchMessList(final List<Mess> messList) = _$FetchMessListImpl;

  List<Mess> get messList;
  @JsonKey(ignore: true)
  _$$FetchMessListImplCopyWith<_$FetchMessListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMessImplCopyWith<$Res> {
  factory _$$AddMessImplCopyWith(
          _$AddMessImpl value, $Res Function(_$AddMessImpl) then) =
      __$$AddMessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Mess mess});

  $MessCopyWith<$Res> get mess;
}

/// @nodoc
class __$$AddMessImplCopyWithImpl<$Res>
    extends _$MessDetailsEventCopyWithImpl<$Res, _$AddMessImpl>
    implements _$$AddMessImplCopyWith<$Res> {
  __$$AddMessImplCopyWithImpl(
      _$AddMessImpl _value, $Res Function(_$AddMessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
  }) {
    return _then(_$AddMessImpl(
      null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as Mess,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessCopyWith<$Res> get mess {
    return $MessCopyWith<$Res>(_value.mess, (value) {
      return _then(_value.copyWith(mess: value));
    });
  }
}

/// @nodoc

class _$AddMessImpl implements AddMess {
  const _$AddMessImpl(this.mess);

  @override
  final Mess mess;

  @override
  String toString() {
    return 'MessDetailsEvent.addMess(mess: $mess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessImpl &&
            (identical(other.mess, mess) || other.mess == mess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMessImplCopyWith<_$AddMessImpl> get copyWith =>
      __$$AddMessImplCopyWithImpl<_$AddMessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Mess> messList) fetchMessList,
    required TResult Function(Mess mess) addMess,
    required TResult Function(String messName) deleteMess,
  }) {
    return addMess(mess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Mess> messList)? fetchMessList,
    TResult? Function(Mess mess)? addMess,
    TResult? Function(String messName)? deleteMess,
  }) {
    return addMess?.call(mess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Mess> messList)? fetchMessList,
    TResult Function(Mess mess)? addMess,
    TResult Function(String messName)? deleteMess,
    required TResult orElse(),
  }) {
    if (addMess != null) {
      return addMess(mess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessList value) fetchMessList,
    required TResult Function(AddMess value) addMess,
    required TResult Function(DeleteMess value) deleteMess,
  }) {
    return addMess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessList value)? fetchMessList,
    TResult? Function(AddMess value)? addMess,
    TResult? Function(DeleteMess value)? deleteMess,
  }) {
    return addMess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessList value)? fetchMessList,
    TResult Function(AddMess value)? addMess,
    TResult Function(DeleteMess value)? deleteMess,
    required TResult orElse(),
  }) {
    if (addMess != null) {
      return addMess(this);
    }
    return orElse();
  }
}

abstract class AddMess implements MessDetailsEvent {
  const factory AddMess(final Mess mess) = _$AddMessImpl;

  Mess get mess;
  @JsonKey(ignore: true)
  _$$AddMessImplCopyWith<_$AddMessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessImplCopyWith<$Res> {
  factory _$$DeleteMessImplCopyWith(
          _$DeleteMessImpl value, $Res Function(_$DeleteMessImpl) then) =
      __$$DeleteMessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messName});
}

/// @nodoc
class __$$DeleteMessImplCopyWithImpl<$Res>
    extends _$MessDetailsEventCopyWithImpl<$Res, _$DeleteMessImpl>
    implements _$$DeleteMessImplCopyWith<$Res> {
  __$$DeleteMessImplCopyWithImpl(
      _$DeleteMessImpl _value, $Res Function(_$DeleteMessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messName = null,
  }) {
    return _then(_$DeleteMessImpl(
      null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessImpl implements DeleteMess {
  const _$DeleteMessImpl(this.messName);

  @override
  final String messName;

  @override
  String toString() {
    return 'MessDetailsEvent.deleteMess(messName: $messName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessImpl &&
            (identical(other.messName, messName) ||
                other.messName == messName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessImplCopyWith<_$DeleteMessImpl> get copyWith =>
      __$$DeleteMessImplCopyWithImpl<_$DeleteMessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Mess> messList) fetchMessList,
    required TResult Function(Mess mess) addMess,
    required TResult Function(String messName) deleteMess,
  }) {
    return deleteMess(messName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Mess> messList)? fetchMessList,
    TResult? Function(Mess mess)? addMess,
    TResult? Function(String messName)? deleteMess,
  }) {
    return deleteMess?.call(messName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Mess> messList)? fetchMessList,
    TResult Function(Mess mess)? addMess,
    TResult Function(String messName)? deleteMess,
    required TResult orElse(),
  }) {
    if (deleteMess != null) {
      return deleteMess(messName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessList value) fetchMessList,
    required TResult Function(AddMess value) addMess,
    required TResult Function(DeleteMess value) deleteMess,
  }) {
    return deleteMess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessList value)? fetchMessList,
    TResult? Function(AddMess value)? addMess,
    TResult? Function(DeleteMess value)? deleteMess,
  }) {
    return deleteMess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessList value)? fetchMessList,
    TResult Function(AddMess value)? addMess,
    TResult Function(DeleteMess value)? deleteMess,
    required TResult orElse(),
  }) {
    if (deleteMess != null) {
      return deleteMess(this);
    }
    return orElse();
  }
}

abstract class DeleteMess implements MessDetailsEvent {
  const factory DeleteMess(final String messName) = _$DeleteMessImpl;

  String get messName;
  @JsonKey(ignore: true)
  _$$DeleteMessImplCopyWith<_$DeleteMessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessDetailsState {
  List<Mess> get messList => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  Option<FirestoreFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessDetailsStateCopyWith<MessDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessDetailsStateCopyWith<$Res> {
  factory $MessDetailsStateCopyWith(
          MessDetailsState value, $Res Function(MessDetailsState) then) =
      _$MessDetailsStateCopyWithImpl<$Res, MessDetailsState>;
  @useResult
  $Res call(
      {List<Mess> messList, bool isFetching, Option<FirestoreFailure> failure});
}

/// @nodoc
class _$MessDetailsStateCopyWithImpl<$Res, $Val extends MessDetailsState>
    implements $MessDetailsStateCopyWith<$Res> {
  _$MessDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messList = null,
    Object? isFetching = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      messList: null == messList
          ? _value.messList
          : messList // ignore: cast_nullable_to_non_nullable
              as List<Mess>,
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
abstract class _$$messDetailsStateImplCopyWith<$Res>
    implements $MessDetailsStateCopyWith<$Res> {
  factory _$$messDetailsStateImplCopyWith(_$messDetailsStateImpl value,
          $Res Function(_$messDetailsStateImpl) then) =
      __$$messDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Mess> messList, bool isFetching, Option<FirestoreFailure> failure});
}

/// @nodoc
class __$$messDetailsStateImplCopyWithImpl<$Res>
    extends _$MessDetailsStateCopyWithImpl<$Res, _$messDetailsStateImpl>
    implements _$$messDetailsStateImplCopyWith<$Res> {
  __$$messDetailsStateImplCopyWithImpl(_$messDetailsStateImpl _value,
      $Res Function(_$messDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messList = null,
    Object? isFetching = null,
    Object? failure = null,
  }) {
    return _then(_$messDetailsStateImpl(
      messList: null == messList
          ? _value._messList
          : messList // ignore: cast_nullable_to_non_nullable
              as List<Mess>,
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

class _$messDetailsStateImpl implements _messDetailsState {
  const _$messDetailsStateImpl(
      {required final List<Mess> messList,
      required this.isFetching,
      required this.failure})
      : _messList = messList;

  final List<Mess> _messList;
  @override
  List<Mess> get messList {
    if (_messList is EqualUnmodifiableListView) return _messList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messList);
  }

  @override
  final bool isFetching;
  @override
  final Option<FirestoreFailure> failure;

  @override
  String toString() {
    return 'MessDetailsState(messList: $messList, isFetching: $isFetching, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$messDetailsStateImpl &&
            const DeepCollectionEquality().equals(other._messList, _messList) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messList), isFetching, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$messDetailsStateImplCopyWith<_$messDetailsStateImpl> get copyWith =>
      __$$messDetailsStateImplCopyWithImpl<_$messDetailsStateImpl>(
          this, _$identity);
}

abstract class _messDetailsState implements MessDetailsState {
  const factory _messDetailsState(
          {required final List<Mess> messList,
          required final bool isFetching,
          required final Option<FirestoreFailure> failure}) =
      _$messDetailsStateImpl;

  @override
  List<Mess> get messList;
  @override
  bool get isFetching;
  @override
  Option<FirestoreFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$messDetailsStateImplCopyWith<_$messDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
