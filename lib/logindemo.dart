import 'package:flutter/material.dart';
import 'settingssublayout.dart';
import 'loginsublayout.dart';

class LoginDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginDemoState();
  }
}

class _LoginDemoState extends State<LoginDemo> {
  String _title = 'Please Login';
  Widget _screen;
  Login _login;
  Settings _settings;
  bool _authenticated;

  void onSubmit() {
    print('Loging with: ' + _login.username + '/' + _login.password);
    if(_login.username == 'kasun' && _login.password == 'password'){
      _setAuthenticated(true);
    }
  }

  _LoginDemoState() {
    _login =  Login(onSubmit: () { onSubmit(); },);
    _settings = Settings();
    _screen = _login;
    _authenticated = false;
  }

  void _goHome() {
    if (_authenticated) {
      _screen = _settings;
      _title = 'Welcome';
    } else {
      _screen = _login;
      _title = 'Please Login';
    }
  }

  void _logout() {
    _setAuthenticated(false);
  }

  void _setAuthenticated(bool auth) {
    setState(() {
      if (auth) {
        _screen = _settings;
        _title = 'Welcome';
        _authenticated = true;
      } else {
        _screen = _login;
        _title = 'Please Login';
        _authenticated = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_title),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.home),
              onPressed: () {
                _goHome();
              }),
          new IconButton(
              icon: new Icon(Icons.exit_to_app),
              onPressed: () {
                _logout();
              })
        ],
      ),
      body: _screen,
    );
  }
}
