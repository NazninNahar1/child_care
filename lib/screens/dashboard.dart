import 'package:child_care/screens/vaccine_list.dart';
import 'package:flutter/material.dart';

import 'ambulance_list.dart';
import 'diet_chart/diet_one.dart';
import 'diet_chart/quick_sugestion.dart';
import 'doctor_list.dart';
import 'notes/medical_records.dart';
import 'notes/notes_one.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isTapped =false;
  void toggle(){
    setState(() {
      isTapped =!isTapped;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: const Icon(Icons.arrow_back_rounded)),
                      Container(
                        height: 60,
                        width: 315,
                        child: const Center(
                          child: Text(
                            'See & Select',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      toggle();
                    });
                    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>DoctorList()));


                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color:isTapped? const Color(0xffa229ce):const Color(0xffE0AFF2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Image.asset(
                              'asset/doctorIcon.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: isTapped?  Color(0xffa229ce): Color(0xffE0AFF2),
                          ),
                          child: const Center(
                            child: Text(
                              'Doctor List',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Vaccine()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffE0AFF2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Image.asset(
                              'asset/vaccineicon.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Color(0xffF4DDFD),
                          ),
                          child: const Center(
                            child: Text(
                              'Vaccine List',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffE0AFF2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Image.asset(
                            'asset/diet.png',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ChildDietChartOne()));

                        },

                        child: Container(
                          height: 50,
                          width: 280,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Color(0xffF4DDFD),
                          ),
                          child: const Center(
                            child: Text(
                              'Child Diet',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Suggestion()));

                    },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffE0AFF2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Image.asset(
                              'asset/message.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Color(0xffF4DDFD),
                          ),
                          child: const Center(
                            child: Text(
                              'Suggestion',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MedicalRecords()));

                  },

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffE0AFF2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Image.asset(
                              'asset/pescription.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Color(0xffF4DDFD),
                          ),
                          child: const Center(
                            child: Text(
                              'Medical Records',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Notes()));

                  },

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffE0AFF2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Image.asset(
                              'asset/pescription.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Color(0xffF4DDFD),
                          ),
                          child: const Center(
                            child: Text(
                              'Notes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffE0AFF2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Image.asset(
                            'asset/call.png',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AmbulanceList()));

                        },
                        child: Container(
                          height: 50,
                          width: 280,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Color(0xffF4DDFD),
                          ),
                          child: const Center(
                            child: Text(
                              'Ambulance',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
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
