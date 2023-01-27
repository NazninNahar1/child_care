import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class AppointmentBookingScreen extends StatefulWidget {
  @override
  _AppointmentBookingScreenState createState() =>
      _AppointmentBookingScreenState();
}

class _AppointmentBookingScreenState extends State<AppointmentBookingScreen> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Text(
          'Appointment Booking',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FormBuilder(
              key: _fbKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'Select Date and Time',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FormBuilderDateTimePicker(
                      inputType: InputType.both,
                      format: DateFormat("yyyy-MM-dd  HH:mm"),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Color(0xff7A87FB),
                          ),
                        ),

                        //  focusedBorder: InputBorder.none,
                        labelText: "Appointment Date and Time",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff7A87FB)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      name: 'appointment_date',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FormBuilderTextField(
                      name: 'name',
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Color(0xff7A87FB),
                          ),
                        ),

                        //  focusedBorder: InputBorder.none,
                        labelText: "Name",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff7A87FB)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FormBuilderTextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Color(0xff7A87FB),
                          ),
                        ),

                        //  focusedBorder: InputBorder.none,
                        labelText: "Phone",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff7A87FB)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      name: 'phone',
                    ),
                  ),
                  SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: Color(0xff7A87FB),
                      ),
                      onPressed: () {
                        if (_fbKey.currentState!.saveAndValidate()) {
                          print(_fbKey.currentState!.value);
                        }
                      },
                      child: const Text(
                        "Confirm Appointment",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
