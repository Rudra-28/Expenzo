import 'package:expenzo/expensemodel.dart';
import 'package:flutter/material.dart';

class ExpenseProvider extends ChangeNotifier{
  final int Expenses=0;
  final List<ExpenseModel> expenseList=[];

  ExpenseModel model= ExpenseModel(title: "food", amount: 1000, date: DateTime.now());
  void addExpense(){
    expenseList.add(model);
    notifyListeners();
  }
}