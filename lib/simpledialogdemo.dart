import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

enum Answer { YES, NO, MAYBE }

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dialog Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Answer is : $_answer'),
              RaisedButton(onPressed: () => _askUser(context),
              child: Text('Show Simple Dialog'),)
            ],
          ),
        ),
      ),
    );
  }

  void _setAnswer(String value) {
    setState(() {
      _answer = value;
    });
  }

  Future<Null> _askUser(BuildContext context) async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('Alert dialog Showing ?'),
            contentPadding: EdgeInsets.all(32.0),
            children: <Widget>[
              Text(
                  'Testing the lenght of the dialog box before displaying it '),
              SimpleDialogOption(
                onPressed: () => Navigator.pop(context, Answer.YES),
                child: Text('Yes'),
              ),
              SimpleDialogOption(
                onPressed: () => Navigator.pop(context, Answer.NO),
                child: Text('No'),
              ),
              SimpleDialogOption(
                onPressed: () => Navigator.pop(context, Answer.MAYBE),
                child: Text('May Be'),
              )
            ],
          );
        })) {
      case Answer.YES:
        _setAnswer('Yes');
        break;
      case Answer.NO:
        _setAnswer('No');

        break;
      case Answer.MAYBE:
        _setAnswer('Maybe');
        break;
    }
  }
}
