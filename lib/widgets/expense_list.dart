import 'package:flutter/material.dart';
import '../models/expense.dart'; // Adjust the path as per your project structure

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;

  ExpenseList(this.expenses);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(expenses[index].title), // Adjust based on your model
          subtitle: Text('\$${expenses[index].amount.toStringAsFixed(2)}'),
        );
      },
    );
  }
}
