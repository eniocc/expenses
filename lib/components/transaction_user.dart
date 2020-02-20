import 'dart:math';

import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import './transaction_form.dart';
import './transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

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
      value: 110.89,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de luz 03',
      value: 110.89,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de luz 04',
      value: 110.89,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta de luz 05',
      value: 110.89,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta de luz 06',
      value: 110.89,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
