import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SnackBarDemoState();
  }
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  String _text;

  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text('Snack Bar Demo'),
      ),
      body: Container(
          child: Center(
        child: new Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                _onChange(value);
              },
            ),
            RaisedButton(
              onPressed: () {
                _showSnackBar(_text);
              },
              child: Text('Show SnackBar'),
            )
          ],
        ),
      )),
    );
  }

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _showSnackBar(String value) {
    if (value.isEmpty) return;
    _scaffoldState.currentState.showSnackBar(SnackBar(content: Text(value)));
  }
}
