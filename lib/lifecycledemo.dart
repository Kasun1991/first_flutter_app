import 'package:flutter/material.dart';

class LifeCycleDemo extends StatefulWidget {
  @override
  _LifeCycleDemoState createState() => _LifeCycleDemoState();
}

class _LifeCycleDemoState extends State<LifeCycleDemo> with WidgetsBindingObserver {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cycle Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              //TODO Add UI Components
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    print('App States : initiated');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('App States : test');
    switch(state){
      case AppLifecycleState.inactive:
        print('App States : ${AppLifecycleState.inactive.toString()}');
        break;
      case AppLifecycleState.paused:
        print('App States : ${AppLifecycleState.paused.toString()}');
        break;
      case AppLifecycleState.resumed:
        print('App States : ${AppLifecycleState.resumed.toString()}');
        break;
      case AppLifecycleState.suspending:
        print('App States : ${AppLifecycleState.suspending.toString()}');
        break;
    }
  }


}
