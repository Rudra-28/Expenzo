import 'package:expenzo/expenseprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpensePage extends StatelessWidget {
  const ExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EXPENZO",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Consumer<ExpenseProvider>(
        builder: (context, provider, child) => Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text(
                  "Total Expense Today",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: ListView.builder(
                  itemCount: provider.expenseList.length,
                  itemBuilder: (context, index) {
                    final item = provider.expenseList[index];
                    return ListTile(
                      title: Text(item.title),
                      subtitle: Text(item.amount.toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      trailing: Text(item.date.toString()),
                    );
                  },
                ),
              ),
            ),

            IconButton(
              onPressed: () {
                provider.addExpense();
              },
              icon: Icon(Icons.add),
              iconSize: 40,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
