import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckBoxDemo();
  }
}

class _CheckBoxDemo extends State<CheckBoxDemo> {
  bool _isChecked = false;

  void _onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Click to check'),
                  Checkbox(
                      value: _isChecked,
                      onChanged: (bool value) {
                        _onChanged(value);
                      }),
                ],
              ),
              CheckboxListTile(
                title: Text('Checkbox List Tile'),
                  activeColor: Colors.red,
                  secondary: const Icon(Icons.home),
                  value: _isChecked,
                  onChanged: (bool value) {
                    _onChanged(value);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
