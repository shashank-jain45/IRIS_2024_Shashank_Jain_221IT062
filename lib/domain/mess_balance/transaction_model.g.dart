// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      messBalance: (json['messBalance'] as num).toDouble(),
      credit: (json['credit'] as num?)?.toDouble() ?? 0,
      debit: (json['debit'] as num?)?.toDouble() ?? 0,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'messBalance': instance.messBalance,
      'credit': instance.credit,
      'debit': instance.debit,
      'time': instance.time.toIso8601String(),
    };
