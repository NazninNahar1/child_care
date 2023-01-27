import 'package:flutter/material.dart';

import 'doctor_details.dart';

class AmbulanceList extends StatefulWidget {
  const AmbulanceList({Key? key}) : super(key: key);

  @override
  State<AmbulanceList> createState() => _AmbulanceListState();
}

List ambulanceList = [
  'name',
  'name',
  'name',
  'name',
  'name',
  'name',
];

class _AmbulanceListState extends State<AmbulanceList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xfff3f1f3),
            body: Container(

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            //color: Colors.deepPurple,
                          ),
                          child: const Center(
                            child: Text(
                              'Ambulance List',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200.0,
                      child: ListView.builder(
                        itemCount: ambulanceList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorDetails()));
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color:const Color(0xff7A87FB),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Image.asset('asset/img.png'),

                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: const [
                                          Text('Toyota Hiace GL',style: TextStyle(color: Color(0xff7A87FB),fontSize: 18),),
                                          Text('Isolation / 4 Seat'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )));
  }
}