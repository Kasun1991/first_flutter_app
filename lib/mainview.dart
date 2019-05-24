import 'package:flutter/material.dart';
import 'hellodemo.dart';
import 'appbardemo.dart';
import 'layoutdemo.dart';
import 'logindemo.dart';
import 'snakbardemo.dart';
import 'alertDialogDemo.dart';
import 'textfieldemo.dart';
import 'checkboxdemo.dart';
import 'radiobuttondemo.dart';
import 'switchdemo.dart';
import 'sliderdemo.dart';
import 'dropdowndemo.dart';
import 'listviewdemo.dart';

class MainView extends StatelessWidget {
  List<String> _tutorials = new List<String>();
  static const String HELLO = "Hello Demo";
  static const String APPBAR = "AppBar Demo";
  static const String LAYOUT = "Layout Demo";
  static const String LOGIN = "Login Demo";
  static const String SNACK_BAR = "SnackBar Demo";
  static const String ALERT_DIALOG = "Alert Dialog Demo";
  static const String TEXT_FIELD = "TextField Demo";
  static const String CHECK_BOX = "Check Box Demo";
  static const String RADIO_BUTTON = "Radio Button Demo";
  static const String SWITCH = "Switch Demo";
  static const String SLIDER = "Slider Demo";
  static const String DROPDOWN = "Dropdown Demo";
  static const String LIST_VIEW = "List View Demo";

  List<String> _getTutorialList() {
    _tutorials.add(HELLO );
    _tutorials.add(APPBAR);
    _tutorials.add(LAYOUT);
    _tutorials.add(LOGIN );
    _tutorials.add(SNACK_BAR);
    _tutorials.add(ALERT_DIALOG);
    _tutorials.add(TEXT_FIELD);
    _tutorials.add(CHECK_BOX);
    _tutorials.add(RADIO_BUTTON);
    _tutorials.add(SWITCH);
    _tutorials.add(SLIDER);
    _tutorials.add(DROPDOWN);
    _tutorials.add(LIST_VIEW);
    return _tutorials;
  }

  Widget _getListView() {
    _getTutorialList();
    return ListView.builder(
        itemCount: _tutorials.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: InkWell(
                  onTap: () {
                    _onTap(context, _tutorials[index]);
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(32.0),
                          child: Text("${_tutorials[index]}"),
                        ),
                      ],
                    ),
                  )));
        });
  }

  void _onTap(BuildContext context, String value) {
    switch (value) {
      case HELLO:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HelloDemo()),
        );
        break;
      case APPBAR:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AppBarDemo()),
      );
      break;
      case LAYOUT:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LayoutDemo()),
        );
        break;
      case LOGIN:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginDemo()),
        );
        break;
      case SNACK_BAR:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SnackBarDemo()),
        );
        break;
      case ALERT_DIALOG:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AlertDialogDemo()),
        );
        break;
      case TEXT_FIELD:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TextFieldDemo()),
        );
        break;
      case CHECK_BOX:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckBoxDemo()),
        );
        break;
      case RADIO_BUTTON:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RadioButtonDemo()),
        );
        break;
      case SWITCH:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SwitchDemo()),
        );
        break;
      case SLIDER:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SliderDemo()),
        );
        break;
      case DROPDOWN:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DropDownDemo()),
        );
        break;
      case LIST_VIEW:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListViewDemo()),
        );
        break;
    }
  }

  Widget _getButtonList(BuildContext context) {
    return Center(
      child: new Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Hello Demo'),
            onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => HelloDemo()),
//                );
              Navigator.pushNamed(context, '/helloDemo');
            },
          ),
          RaisedButton(
            child: Text('AppBar Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppBarDemo()),
              );
              //Navigator.pushNamed(context, '/appBarDemo');
            },
          ),
          RaisedButton(
            child: Text('Layout Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LayoutDemo()),
              );
              //Navigator.pushNamed(context, '/layoutDemo');
            },
          ),
          RaisedButton(
            child: Text('Login Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDemo()),
              );
              //Navigator.pushNamed(context, '/loginDemo');
            },
          ),
          RaisedButton(
            child: Text('SnackBar Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SnackBarDemo()),
              );
              //Navigator.pushNamed(context, '/snackBarDemo');
            },
          ),
          RaisedButton(
            child: Text('Alert Dialog Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlertDialogDemo()),
              );
              //Navigator.pushNamed(context, '/alertDialogDemo');
            },
          ),
          RaisedButton(
            child: Text('Text Field Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextFieldDemo()),
              );
              //Navigator.pushNamed(context, '/textFieldDemo');
            },
          ),
          RaisedButton(
            child: Text('Check Box Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckBoxDemo()),
              );
              //Navigator.pushNamed(context, '/textFieldDemo');
            },
          ),
          RaisedButton(
            child: Text('Radio Button Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RadioButtonDemo()),
              );
              //Navigator.pushNamed(context, '/textFieldDemo');
            },
          ),
          RaisedButton(
            child: Text('Switch Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SwitchDemo()),
              );
              //Navigator.pushNamed(context, '/textFieldDemo');
            },
          ),
          RaisedButton(
            child: Text('Slider Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SliderDemo()),
              );
              //Navigator.pushNamed(context, '/textFieldDemo');
            },
          ),
          RaisedButton(
            child: Text('Dropdown Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DropDownDemo()),
              );
              //Navigator.pushNamed(context, '/textFieldDemo');
            },
          ),
          RaisedButton(
            child: Text('Listview Demo'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewDemo()),
              );
              //Navigator.pushNamed(context, '/textFieldDemo');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: _getListView(),
    );
  }
}
