import 'package:flutter/material.dart';

class DateTimePickerDemo extends StatefulWidget {
  @override
  _DateTimePickerDemoState createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2020));
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay pickedTime =
        await showTimePicker(context: context, initialTime: _time);
    if (pickedTime != null && pickedTime != _time) {
      setState(() {
        _time = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Picked date : ${_date.toString()}'),
              RaisedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child: Text('Select Date '),
              ),
              Text('Picked Time : ${_time.toString()}'),
              RaisedButton(
                onPressed: () {
                  _selectTime(context);
                },
                child: Text('Select Time '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
