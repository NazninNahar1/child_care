import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChickenPox extends StatefulWidget {
  const ChickenPox({Key? key}) : super(key: key);

  @override
  State<ChickenPox> createState() => _ChickenPoxState();
}

class _ChickenPoxState extends State<ChickenPox> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  DateTime _date = DateTime.now();

  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children:[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(alignment:Alignment.topLeft ,
                      child: InkWell(
                          onTap:(){
                            Navigator.pop(context);

                      },child: Icon(Icons.arrow_back))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                        'Did you taken your Chicken Pox virus Vaccine?',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Today\'s date: ${DateFormat.yMMMd().format(_date)}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 50,),
                
                Text("You Selected: ${DateFormat.yMMMd().format(_selectedValue)}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
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
                    child: Row(
                      children: [
                        Text('Set Reminder',style:TextStyle(fontSize: 20, fontWeight: FontWeight.w500,)),
                        Icon(Icons.notifications_active_outlined,size: 20,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ],
            ) ,
          ),
        ),
      ),
    );
  }
}
