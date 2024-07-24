import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 45);
  DateTime _dateTime = DateTime(2000);

  void _showTimePicker() async{
   await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });


  }
  void _selectDate() async{
    await  showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: _showTimePicker,
                child: Card(
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.timer,
                            color: Colors.white.withOpacity(.8),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Pick Time",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.timer,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      _timeOfDay.format(context).toString(),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  _selectDate();
                },
                child: Card(
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.date_range,
                            color: Colors.white.withOpacity(.8),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Pick Date",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.date_range,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text( _dateTime != null?
                        DateFormat.yMMMd().format(_dateTime):"Date is not found",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
