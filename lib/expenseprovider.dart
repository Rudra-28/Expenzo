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

  int ExpenseTotalAmount() {
    int total = 0;
    for (var expense in expenseList) {
      total += expense.amount;
    }
    return total;
  }

  ExpenseModel model = ExpenseModel(
    title: "food",
    amount: 1000,
    date: DateTime.now(),
  );
  void addExpense() {
    expenseList.add(model);
    notifyListeners();
  }
}
