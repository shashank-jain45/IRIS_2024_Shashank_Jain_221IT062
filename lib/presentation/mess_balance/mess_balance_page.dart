import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mess_management_app/application/mess_balance/bloc/mess_balance_repository_bloc.dart';
import 'package:mess_management_app/domain/mess_balance/transaction_model.dart';
import 'package:mess_management_app/injection.dart';

class MessBalancePage extends StatelessWidget {
  MessBalancePage({super.key});
  final TextEditingController _amount = TextEditingController();
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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    title: const Text(
                      "Mess Balance:",
                      style: TextStyle(fontSize: 25),
                    ),
                    trailing: Text(
                      "Rs ${state.messBalance}",
                      style: const TextStyle(fontSize: 25),
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
                              borderSide: BorderSide(color: Colors.grey[400]!),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[400]!),
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
                                  "Rs ${trans[index].messBalance}",
                                ),
                                trailing: Text(
                                  DateFormat.yMMMMd().format(trans[index].time),
                                ),
                                leading: Text(
                                  "Rs ${trans[index].credit}",
                                  style: const TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => const Divider(
                              color: Colors.grey,
                              height: 5,
                              thickness: 2,
                            ),
                            itemCount: state.trans.length,
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
