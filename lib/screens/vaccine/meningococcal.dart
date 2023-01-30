import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Meningococcal extends StatefulWidget {
  @override
  _MeningococcalState createState() => _MeningococcalState();
}

class _MeningococcalState extends State<Meningococcal> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  DateTime _date = DateTime.now();
  bool yesTapped =false;
  bool noTapped=false;
  bool time1 = false;
  bool time2 = false;
  bool time3 = false;

  void timetoggle(int i){
    switch(i) {
      case 1:{time1=! time1;
      print("1");}
      break;

      case 2: {time2=! time2;
      print("2");}
      break;

      case 3: {time3=! time3; }
      break;

      default: { print("Invalid choice"); }
    }
  }
  void toggle(){
    yesTapped=!yesTapped;
  }
  void toggletwo(){
    noTapped=!noTapped;
  }

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
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(alignment:Alignment.topLeft ,
                        child: Icon(Icons.arrow_back)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                        'Did you taken your Meningococcal virus Vaccine?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:yesTapped? Colors.deepPurple:Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.deepPurple)),
                    ),
                    onPressed: () {
                      setState(() {
                        toggle();
                      });

                    },
                    child: Text('Yes',style:TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color :Colors.black),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:noTapped?Colors.deepPurple: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.deepPurple)),
                    ),
                    onPressed: () {
                      setState(() {
                        toggletwo();
                      });
                    },
                    child: Text('No',style:TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  ),
                ),
                SizedBox(height: 50,),

                Text("You Selected: ${DateFormat.yMMMd().format(_selectedValue)}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Text("Select Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.deepPurple,
                  selectedTextColor: Colors.white,
                  // inactiveDates: [
                  //   DateTime.now().add(Duration(days: 3)),
                  // ],
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
                SizedBox(height: 70,),
                Text("Select Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: time1?Colors.deepPurple:Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed:(){
                        setState(() {
                          timetoggle(1);
                        });
                      }, child: Text(" 9 AM",style: TextStyle(color: Colors.black)),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:time2?Colors.deepPurple:Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed:(){
                        setState(() {
                          timetoggle(2);
                        });
                      }, child: Text(" 10 AM",style: TextStyle(color: Colors.black)),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: time3?Colors.deepPurple:Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed:(){
                        setState(() {
                          timetoggle(3);
                        });

                      }, child: Text(" 11 AM",style: TextStyle(color: Colors.black),),),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(

                            content: Text("Reminder has been saved"),
                          );
                        },
                      );
                    },
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
