import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/expense_provider.dart';

class AddExpenseScreen extends StatefulWidget {
  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _submitData() {
    final title = _titleController.text;
    final amount = double.parse(_amountController.text);

    if (title.isEmpty || amount <= 0) return;

    Provider.of<ExpenseProvider>(context, listen: false)
        .addExpense(title, amount, DateTime.now(), 'General');

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Expense')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _titleController, decoration: InputDecoration(labelText: 'Title')),
            TextField(controller: _amountController, decoration: InputDecoration(labelText: 'Amount'), keyboardType: TextInputType.number),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _submitData, child: Text('Add Expense'))
          ],
        ),
      ),
    );
  }
}
