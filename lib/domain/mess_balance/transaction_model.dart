import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
///Data class of  Transactions

abstract class Transaction with _$Transaction {
  const factory Transaction(
      {required double messBalance,
      @Default(0) double credit,
      @Default(0) double debit,
      required DateTime time}) = _Transaction;
  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
