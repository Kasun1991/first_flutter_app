import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SwitchDemo();
  }
}

class _SwitchDemo extends State<SwitchDemo> {
  bool _isSelect = false;

  void _onChanged(bool value) {
    setState(() {
      _isSelect = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Switch on '),
                  Switch(
                      value: _isSelect,
                      activeColor: Colors.red,
                      onChanged: (bool value) {
                        _onChanged(value);
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
