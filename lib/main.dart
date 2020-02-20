import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

final _transactions = [
  Transaction(
    id: 't1',
    title: 'Novo tênis d corrida',
    value: 100.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: 't2',
    title: 'Conta de luz',
    value: 110.00,
    date: DateTime.now(),
  ),
];

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transactions.map((tr){
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        tr.value.toString()
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(tr.title),
                        Text(tr.date.toString())
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
