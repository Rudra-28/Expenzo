import 'dart:io';

import 'package:expenzo/expensemodel.dart';
import 'package:flutter/material.dart';

class ExpenseProvider extends ChangeNotifier {
  int Expenses = 0;
  final List<ExpenseModel> expenseList = [];
  TextEditingController title = TextEditingController();
  TextEditingController amount_spend = TextEditingController();

  @override
  void dispose() {
    title.dispose();
    amount_spend.dispose();
    super.dispose();
  }

  void addExpense() {
    ExpenseModel model = ExpenseModel(
      title: title.text,
      amount: int.parse(amount_spend.text),
      date: DateTime.now(),
    );
    expenseList.add(model);
    title.clear();
    amount_spend.clear();
    notifyListeners();
  }

  int ExpenseTotalAmount() {
    int total = 0;
    for (var expense in expenseList) {
      total += expense.amount;
    }
    return total;
  }
}
