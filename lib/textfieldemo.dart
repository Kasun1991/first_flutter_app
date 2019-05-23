import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldDemoState();
  }
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final TextEditingController _controller = TextEditingController();
  String _text = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                _onChanged(value);
              },
              maxLines: 3,
              autocorrect: true,
            ),
            TextField(
              onChanged: (String value) {
                _onChanged(value);
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.supervised_user_circle),
                  hintText: 'Hint',
                  labelText: 'Text lable'),
            ),
            RaisedButton(
              onPressed: () {
                _onPressed();
              },
              child: Text('Print Text'),
            )
          ],
        ),
      ),
    );
  }

  void _onChanged(String value) {
    setState(() {
      _text = value;
    });
  }

  void _onPressed() {
    print(_text);
  }

  void _accessThroughController(){
    print(_controller.text);
  }
}
