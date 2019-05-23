import 'package:flutter/material.dart';

class RadioButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RadioButtonDemo();
  }
}

class _RadioButtonDemo extends State<RadioButtonDemo> {
  int _isSelected = 0;

  void _onChanged(int value) {
    setState(() {
      _isSelected = value;
    });
  }

  List<Widget> _makeView() {
    List<Widget> list = new List<Widget>();
    for (int i = 0; i < 3; i++) {
      list.add(Row(
        children: <Widget>[
          Text('Radio Button $i'),
          Radio(
              value: i,
              groupValue: _isSelected,
              onChanged: (int value) {
                _onChanged(value);
              })
        ],
      ));
    }
    for (int i = 0; i < 3; i++) {
      list.add(RadioListTile(
        title: Text('Radio List Tile $i'),
          subtitle: Text('SubTitle $i'),
          activeColor: Colors.red,
          secondary: new Icon(Icons.home),
          value: i,
          groupValue: _isSelected,
          onChanged: (int value) {
            _onChanged(value);
          }));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(children: _makeView()),
        ),
      ),
    );
  }
}
