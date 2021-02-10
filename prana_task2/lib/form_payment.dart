import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:month_picker_dialog/month_picker_dialog.dart';

class FormPayment extends StatelessWidget {
  static String tag = 'form-payment';
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text('Payment Card Demo'),
      backgroundColor: Colors.deepPurpleAccent[400],
      centerTitle: true,
    );
    final buttonsubmit = Container(
      alignment: Alignment.center,
      child: RaisedButton(
        onPressed: (){},
        color: Colors.blue,
        splashColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 70.0),
        textColor: Colors.white,
        child: new Text(
          "Pay",
          style: TextStyle(fontSize: 17.0),
        ),
      ),
    );
    
    final cardname = TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        icon: Icon(Icons.person, size: 30.0,),
        filled: true,
        labelText: 'Card Name'
      ),
    );

    final cardnumber = TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        // ignore: deprecated_member_use
        WhitelistingTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(20)
      ],
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        icon: Icon(Icons.account_balance_wallet, size: 30.0,),
        filled: true,
        labelText: 'Number'
      ),
    );

    final cvvcard = TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        // ignore: deprecated_member_use
        WhitelistingTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(3),
      ],
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        icon: Icon(Icons.credit_card, size: 30.0,),
        filled: true,
        labelText: 'CVV'
      ),
    );

    final expcard = TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        // ignore: deprecated_member_use
        WhitelistingTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
      ],
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        icon: Icon(Icons.date_range, size: 30.0,),
        filled: true,
        labelText: 'Expiry Date'
      ),
      /* onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
      },*/
    );

    final body = Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 8.0),
      child: ListView(
        children: <Widget>[
          cardname,
          SizedBox(height: 25.0),
          cardnumber,
          SizedBox(height: 25.0),
          cvvcard,
          SizedBox(height: 25.0),
          expcard,
          SizedBox(height: 25.0),
          buttonsubmit
        ],
      ),
    );

    return Scaffold(
      appBar: appbar,
      body: body,
    );
  }
}