import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/expense_provider.dart';
import '../widgets/expense_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expenseData = Provider.of<ExpenseProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Expense Tracker')),
      body: Column(
        children: [
          Expanded(child: ExpenseList(expenseData.expenses)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-expense');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
