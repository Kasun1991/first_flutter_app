import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropDownDemo();
  }
}

class _DropDownDemo extends State<DropDownDemo> {
  String _value;
  List<String> _values = new List<String>();

  @override
  void initState() {
    _values.addAll(["Name 1", "Name 2", "Name 3", "Name 4"]);
    _value = _values.elementAt(0);
  }

  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              DropdownButton(
                  value: _value,
                  items: _values.map((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.verified_user),
                            Text('Name is : $value')
                          ],
                        ));
                  }).toList(),
                  onChanged: (String value) {
                    _onChanged(value);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
