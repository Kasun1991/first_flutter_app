import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _AlertDialogDemoState();
  }
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Demo'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                _onChange(value);
              },
            ),
            RaisedButton(
              onPressed: () {
                _showAlert(_text);
              },
              child: Text('Alert Dialog'),
            )
          ],
        ),
      ),
    );
  }

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _onDialogResult(String value) {
    Navigator.pop(context);
  }

  void _showAlert(String value) {
    if (value.isEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
        value,
        style: TextStyle(fontSize: 30.0),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              _onDialogResult('Yes');
            },
            child: Text('Yes'))
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
