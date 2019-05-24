import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SliderDemo();
  }
}

class _SliderDemo extends State<SliderDemo> {
  final double _max = 100.0;
  final double _min = 0.0;

  double _progress = 0;

  void _onChanged(double value) {
    setState(() {
      _progress = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Slider progress : ${_progress.round()}'),
              Slider(
                  value: _progress,
                  max: _max,
                  min: _min,
                  onChanged: (double value) {
                    _onChanged(value);
                  }),
              LinearProgressIndicator(
                  value: _progress * .01
              )
            ],
          ),
        ),
      ),
    );
  }
}
