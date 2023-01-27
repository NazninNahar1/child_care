import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Rotata extends StatefulWidget {
  @override
  _RotataState createState() => _RotataState();
}

class _RotataState extends State<Rotata> {
  String _date = DateFormat.yMMMd().format(DateTime.now());
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(alignment:Alignment.topLeft ,
                      child: Icon(Icons.arrow_back)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    'Did you taken your Rota virus Vaccine?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.deepPurple)),
                    ),
                    onPressed: () {},
                    child: Text('Yes',style:TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.deepPurple)),
                    ),
                    onPressed: () {},
                    child: Text('No',style:TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  ),
                ),
                Text('Today\'s date: $_date', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FormField<DateTime>(
                    builder: (FormFieldState<DateTime> state) {
                      return InputDecorator(
                        decoration: const InputDecoration(
                          fillColor: Colors.deepPurple,
                          border: OutlineInputBorder(),
                          labelText: 'Select date',
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(_selectedDate == null
                                ? 'Click the calender and Select a date'
                                : DateFormat.yMMMd().format(_selectedDate!)),
                            IconButton(
                              icon: const Icon(Icons.calendar_today,size: 30,),
                              onPressed: () async {
                                final date = await showDatePicker(
                                  context: context,
                                  builder: (context, child) {
                                    return Theme(
                                      data: Theme.of(context).copyWith(
                                        colorScheme: const ColorScheme.light(
                                          primary: Colors.deepPurple, // header background color
                                          onPrimary: Colors.white, // header text color
                                          onSurface: Colors.deepPurple, // body text color
                                        ),
                                        textButtonTheme: TextButtonThemeData(
                                          style: TextButton.styleFrom(
                                            primary: Colors.deepPurple, // button text color
                                          ),
                                        ),
                                      ),
                                      child: child!,
                                    );
                                  } ,
                                  initialDate: _selectedDate ?? DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100),
                                );
                                if (date != null) {
                                  setState(() {
                                    _selectedDate = date;
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 200,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          ),
                    ),
                    onPressed: () {},
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Set Reminder',style:TextStyle(fontSize: 20, fontWeight: FontWeight.w500,)),
                        Icon(Icons.notifications_active_outlined,size: 20,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
