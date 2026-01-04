import 'package:expenzo/expensePage.dart';
import 'package:expenzo/expenseprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

  void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ExpenseProvider(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: ExpensePage(),
    );
  }
}