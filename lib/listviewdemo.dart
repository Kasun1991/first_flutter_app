import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListViewDemo();
  }
}

class _ListViewDemo extends State<ListViewDemo> {
  List<bool> _data = new List<bool>();

  @override
  void initState() {
    super.initState();
    setState(() {
      for (int i = 0; i < 10; i++) {
        _data.add(false);
      }
    });
  }

  void _onChanged(bool value, int index) {
    setState(() {
      _data[index] = value;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View Demo'),
        ),
        body: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: InkWell(
                      onTap: () {
                        _onChanged(true, index);
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(32.0),
                              child: Text("Click Me!"),
                            ),
                          ],
                        ),
                      )));
            }));
  }
}
