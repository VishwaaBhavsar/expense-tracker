import 'package:flutter/material.dart';
import '../models/expense.dart';

class ExpenseProvider with ChangeNotifier {
  final List<Expense> _expenses = [];

  List<Expense> get expenses => [..._expenses];

  void addExpense(String title, double amount, DateTime date, String category) {
    final newExpense = Expense(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: date,
      category: category,
    );
    _expenses.add(newExpense);
    notifyListeners();
  }
}
