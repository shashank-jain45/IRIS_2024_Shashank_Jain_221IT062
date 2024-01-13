import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../application/mess_balance/bloc/mess_balance_repository_bloc.dart';
import '../../domain/core/injection.dart';
import '../../domain/mess_balance/transaction_model.dart';

class MessBalancePage extends StatelessWidget {
  MessBalancePage({
    Key? key,
    required this.messCharge,
  }) : super(key: key);
  final TextEditingController _amount = TextEditingController();
  final double messCharge;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<MessBalanceRepositoryBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Transaction Details",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<MessBalanceRepositoryBloc,
              MessBalanceRepositoryState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        title: const Text(
                          "Mess Balance:",
                          style: TextStyle(fontSize: 25),
                        ),
                        trailing: Text(
                          "₹ ${state.messBalance}",
                          style: TextStyle(
                              fontSize: 25,
                              color: state.messBalance < 0
                                  ? Colors.redAccent
                                  : Colors.green),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Enter Amount :",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 120,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: _amount,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.currency_rupee),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400]!),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400]!),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<MessBalanceRepositoryBloc>().add(
                                MessBalanceRepositoryEvent.addMessBalance(
                                  Transaction(
                                    credit: double.parse(
                                      _amount.text.trim(),
                                    ),
                                    messBalance: state.messBalance +
                                        double.parse(
                                          _amount.text.trim(),
                                        ),
                                    time: DateTime.now(),
                                  ),
                                ),
                              );
                        },
                        child: const Text(
                          "Add",
                        ),
                      ),
                      const Text(
                        "Transaction Details",
                        style: TextStyle(fontSize: 25),
                      ),
                      state.trans.isEmpty
                          ? const CircularProgressIndicator()
                          : Expanded(
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  List<Transaction> trans = state.trans;
                                  return ListTile(
                                    title: const Text("Mess Balance:"),
                                    subtitle: Text(
                                      "₹ ${trans[index].messBalance}",
                                    ),
                                    trailing: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          DateFormat.yMMMMd()
                                              .format(trans[index].time),
                                        ),
                                        Text(
                                          trans[index].time.hour < 12
                                              ? "BreakFast"
                                              : trans[index].time.hour > 12 &&
                                                      trans[index].time.hour <
                                                          16
                                                  ? "Lunch"
                                                  : trans[index].time.hour >
                                                              16 &&
                                                          trans[index]
                                                                  .time
                                                                  .hour <
                                                              19
                                                      ? "Snack"
                                                      : "Dinner",
                                          style: const TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    leading: trans[index].credit == 0
                                        ? Text(
                                            "₹ ${trans[index].debit}",
                                            style: const TextStyle(
                                              color: Colors.red,
                                            ),
                                          )
                                        : Text(
                                            "₹ ${trans[index].credit}",
                                            style: const TextStyle(
                                              color: Colors.green,
                                            ),
                                          ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const Divider(
                                  color: Colors.grey,
                                  height: 5,
                                  thickness: 2,
                                ),
                                itemCount: state.trans.length,
                              ),
                            )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton.icon(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            side: const BorderSide(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                      icon: const Icon(Icons.payment),
                      onPressed: () {
                        context.read<MessBalanceRepositoryBloc>().add(
                              MessBalanceRepositoryEvent.addMessBalance(
                                Transaction(
                                  debit: messCharge,
                                  messBalance: state.messBalance - messCharge,
                                  time: DateTime.now(),
                                ),
                              ),
                            );
                      },
                      label: const Text("Pay for meal",
                          style: TextStyle(fontSize: 20)),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
