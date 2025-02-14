import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/expense_provider.dart';
import './screens/home_screen.dart';
import './screens/add_expense_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExpenseProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        routes: {'/add-expense': (context) => AddExpenseScreen()},
      ),
    );
  }
}
