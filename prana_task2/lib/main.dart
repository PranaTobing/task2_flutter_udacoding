import 'package:flutter/material.dart';
import 'form_payment.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    FormPayment.tag: (context) => FormPayment(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 2 Prana',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: FormPayment(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}