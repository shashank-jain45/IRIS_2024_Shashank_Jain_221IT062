// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_balance_repository_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessBalanceRepositoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction tran) addMessBalance,
    required TResult Function(List<Transaction> trans) fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Transaction tran)? addMessBalance,
    TResult? Function(List<Transaction> trans)? fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction tran)? addMessBalance,
    TResult Function(List<Transaction> trans)? fetchTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMessBalance value) addMessBalance,
    required TResult Function(FetchTransactions value) fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddMessBalance value)? addMessBalance,
    TResult? Function(FetchTransactions value)? fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMessBalance value)? addMessBalance,
    TResult Function(FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessBalanceRepositoryEventCopyWith<$Res> {
  factory $MessBalanceRepositoryEventCopyWith(MessBalanceRepositoryEvent value,
          $Res Function(MessBalanceRepositoryEvent) then) =
      _$MessBalanceRepositoryEventCopyWithImpl<$Res,
          MessBalanceRepositoryEvent>;
}

/// @nodoc
class _$MessBalanceRepositoryEventCopyWithImpl<$Res,
        $Val extends MessBalanceRepositoryEvent>
    implements $MessBalanceRepositoryEventCopyWith<$Res> {
  _$MessBalanceRepositoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddMessBalanceImplCopyWith<$Res> {
  factory _$$AddMessBalanceImplCopyWith(_$AddMessBalanceImpl value,
          $Res Function(_$AddMessBalanceImpl) then) =
      __$$AddMessBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction tran});

  $TransactionCopyWith<$Res> get tran;
}

/// @nodoc
class __$$AddMessBalanceImplCopyWithImpl<$Res>
    extends _$MessBalanceRepositoryEventCopyWithImpl<$Res, _$AddMessBalanceImpl>
    implements _$$AddMessBalanceImplCopyWith<$Res> {
  __$$AddMessBalanceImplCopyWithImpl(
      _$AddMessBalanceImpl _value, $Res Function(_$AddMessBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tran = null,
  }) {
    return _then(_$AddMessBalanceImpl(
      null == tran
          ? _value.tran
          : tran // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get tran {
    return $TransactionCopyWith<$Res>(_value.tran, (value) {
      return _then(_value.copyWith(tran: value));
    });
  }
}

/// @nodoc

class _$AddMessBalanceImpl
    with DiagnosticableTreeMixin
    implements AddMessBalance {
  const _$AddMessBalanceImpl(this.tran);

  @override
  final Transaction tran;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessBalanceRepositoryEvent.addMessBalance(tran: $tran)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'MessBalanceRepositoryEvent.addMessBalance'))
      ..add(DiagnosticsProperty('tran', tran));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessBalanceImpl &&
            (identical(other.tran, tran) || other.tran == tran));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tran);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMessBalanceImplCopyWith<_$AddMessBalanceImpl> get copyWith =>
      __$$AddMessBalanceImplCopyWithImpl<_$AddMessBalanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction tran) addMessBalance,
    required TResult Function(List<Transaction> trans) fetchTransactions,
  }) {
    return addMessBalance(tran);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Transaction tran)? addMessBalance,
    TResult? Function(List<Transaction> trans)? fetchTransactions,
  }) {
    return addMessBalance?.call(tran);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction tran)? addMessBalance,
    TResult Function(List<Transaction> trans)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (addMessBalance != null) {
      return addMessBalance(tran);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMessBalance value) addMessBalance,
    required TResult Function(FetchTransactions value) fetchTransactions,
  }) {
    return addMessBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddMessBalance value)? addMessBalance,
    TResult? Function(FetchTransactions value)? fetchTransactions,
  }) {
    return addMessBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMessBalance value)? addMessBalance,
    TResult Function(FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (addMessBalance != null) {
      return addMessBalance(this);
    }
    return orElse();
  }
}

abstract class AddMessBalance implements MessBalanceRepositoryEvent {
  const factory AddMessBalance(final Transaction tran) = _$AddMessBalanceImpl;

  Transaction get tran;
  @JsonKey(ignore: true)
  _$$AddMessBalanceImplCopyWith<_$AddMessBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTransactionsImplCopyWith<$Res> {
  factory _$$FetchTransactionsImplCopyWith(_$FetchTransactionsImpl value,
          $Res Function(_$FetchTransactionsImpl) then) =
      __$$FetchTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> trans});
}

/// @nodoc
class __$$FetchTransactionsImplCopyWithImpl<$Res>
    extends _$MessBalanceRepositoryEventCopyWithImpl<$Res,
        _$FetchTransactionsImpl>
    implements _$$FetchTransactionsImplCopyWith<$Res> {
  __$$FetchTransactionsImplCopyWithImpl(_$FetchTransactionsImpl _value,
      $Res Function(_$FetchTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trans = null,
  }) {
    return _then(_$FetchTransactionsImpl(
      null == trans
          ? _value._trans
          : trans // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$FetchTransactionsImpl
    with DiagnosticableTreeMixin
    implements FetchTransactions {
  const _$FetchTransactionsImpl(final List<Transaction> trans) : _trans = trans;

  final List<Transaction> _trans;
  @override
  List<Transaction> get trans {
    if (_trans is EqualUnmodifiableListView) return _trans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trans);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessBalanceRepositoryEvent.fetchTransactions(trans: $trans)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'MessBalanceRepositoryEvent.fetchTransactions'))
      ..add(DiagnosticsProperty('trans', trans));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionsImpl &&
            const DeepCollectionEquality().equals(other._trans, _trans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTransactionsImplCopyWith<_$FetchTransactionsImpl> get copyWith =>
      __$$FetchTransactionsImplCopyWithImpl<_$FetchTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction tran) addMessBalance,
    required TResult Function(List<Transaction> trans) fetchTransactions,
  }) {
    return fetchTransactions(trans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Transaction tran)? addMessBalance,
    TResult? Function(List<Transaction> trans)? fetchTransactions,
  }) {
    return fetchTransactions?.call(trans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction tran)? addMessBalance,
    TResult Function(List<Transaction> trans)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions(trans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMessBalance value) addMessBalance,
    required TResult Function(FetchTransactions value) fetchTransactions,
  }) {
    return fetchTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddMessBalance value)? addMessBalance,
    TResult? Function(FetchTransactions value)? fetchTransactions,
  }) {
    return fetchTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMessBalance value)? addMessBalance,
    TResult Function(FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions(this);
    }
    return orElse();
  }
}

abstract class FetchTransactions implements MessBalanceRepositoryEvent {
  const factory FetchTransactions(final List<Transaction> trans) =
      _$FetchTransactionsImpl;

  List<Transaction> get trans;
  @JsonKey(ignore: true)
  _$$FetchTransactionsImplCopyWith<_$FetchTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessBalanceRepositoryState {
  List<Transaction> get trans => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  double get messBalance => throw _privateConstructorUsedError;
  Option<FirestoreFailure> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessBalanceRepositoryStateCopyWith<MessBalanceRepositoryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessBalanceRepositoryStateCopyWith<$Res> {
  factory $MessBalanceRepositoryStateCopyWith(MessBalanceRepositoryState value,
          $Res Function(MessBalanceRepositoryState) then) =
      _$MessBalanceRepositoryStateCopyWithImpl<$Res,
          MessBalanceRepositoryState>;
  @useResult
  $Res call(
      {List<Transaction> trans,
      bool isFetching,
      double messBalance,
      Option<FirestoreFailure> failureOrSuccess});
}

/// @nodoc
class _$MessBalanceRepositoryStateCopyWithImpl<$Res,
        $Val extends MessBalanceRepositoryState>
    implements $MessBalanceRepositoryStateCopyWith<$Res> {
  _$MessBalanceRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trans = null,
    Object? isFetching = null,
    Object? messBalance = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      trans: null == trans
          ? _value.trans
          : trans // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      messBalance: null == messBalance
          ? _value.messBalance
          : messBalance // ignore: cast_nullable_to_non_nullable
              as double,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessBalanceRepositoryImplCopyWith<$Res>
    implements $MessBalanceRepositoryStateCopyWith<$Res> {
  factory _$$MessBalanceRepositoryImplCopyWith(
          _$MessBalanceRepositoryImpl value,
          $Res Function(_$MessBalanceRepositoryImpl) then) =
      __$$MessBalanceRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Transaction> trans,
      bool isFetching,
      double messBalance,
      Option<FirestoreFailure> failureOrSuccess});
}

/// @nodoc
class __$$MessBalanceRepositoryImplCopyWithImpl<$Res>
    extends _$MessBalanceRepositoryStateCopyWithImpl<$Res,
        _$MessBalanceRepositoryImpl>
    implements _$$MessBalanceRepositoryImplCopyWith<$Res> {
  __$$MessBalanceRepositoryImplCopyWithImpl(_$MessBalanceRepositoryImpl _value,
      $Res Function(_$MessBalanceRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trans = null,
    Object? isFetching = null,
    Object? messBalance = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$MessBalanceRepositoryImpl(
      trans: null == trans
          ? _value._trans
          : trans // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      messBalance: null == messBalance
          ? _value.messBalance
          : messBalance // ignore: cast_nullable_to_non_nullable
              as double,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
    ));
  }
}

/// @nodoc

class _$MessBalanceRepositoryImpl
    with DiagnosticableTreeMixin
    implements MessBalanceRepository {
  const _$MessBalanceRepositoryImpl(
      {required final List<Transaction> trans,
      required this.isFetching,
      required this.messBalance,
      required this.failureOrSuccess})
      : _trans = trans;

  final List<Transaction> _trans;
  @override
  List<Transaction> get trans {
    if (_trans is EqualUnmodifiableListView) return _trans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trans);
  }

  @override
  final bool isFetching;
  @override
  final double messBalance;
  @override
  final Option<FirestoreFailure> failureOrSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessBalanceRepositoryState(trans: $trans, isFetching: $isFetching, messBalance: $messBalance, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessBalanceRepositoryState'))
      ..add(DiagnosticsProperty('trans', trans))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('messBalance', messBalance))
      ..add(DiagnosticsProperty('failureOrSuccess', failureOrSuccess));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessBalanceRepositoryImpl &&
            const DeepCollectionEquality().equals(other._trans, _trans) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.messBalance, messBalance) ||
                other.messBalance == messBalance) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trans),
      isFetching,
      messBalance,
      failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessBalanceRepositoryImplCopyWith<_$MessBalanceRepositoryImpl>
      get copyWith => __$$MessBalanceRepositoryImplCopyWithImpl<
          _$MessBalanceRepositoryImpl>(this, _$identity);
}

abstract class MessBalanceRepository implements MessBalanceRepositoryState {
  const factory MessBalanceRepository(
          {required final List<Transaction> trans,
          required final bool isFetching,
          required final double messBalance,
          required final Option<FirestoreFailure> failureOrSuccess}) =
      _$MessBalanceRepositoryImpl;

  @override
  List<Transaction> get trans;
  @override
  bool get isFetching;
  @override
  double get messBalance;
  @override
  Option<FirestoreFailure> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$MessBalanceRepositoryImplCopyWith<_$MessBalanceRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
