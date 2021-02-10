import 'package:flutter/material.dart';

class FormPayment extends StatelessWidget {
  static String tag = 'form-payment';
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text('Payment Card Demo'),
      backgroundColor: Colors.deepPurpleAccent[400],
      centerTitle: true,
    );
    final buttonsubmit = RaisedButton(
      onPressed: null,
      color: Colors.lightBlueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100.0))),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
      textColor: Colors.white,
      child: Text('PAY'),
    );
    final body = ListView(
      children: <Widget>[
        buttonsubmit
      ],
    );

    return Scaffold(
      appBar: appbar,
      body: body,
    );
  }
}