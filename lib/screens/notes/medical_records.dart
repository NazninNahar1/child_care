import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MedicalRecords extends StatefulWidget {
  @override
  _MedicalRecordsState createState() => _MedicalRecordsState();
}

class _MedicalRecordsState extends State<MedicalRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Medical Records",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                    child: Text(
                      'Keep your Medical records here',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .4,
                color: Color(0xff24678),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your records here",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 40),
              IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt,size: 50,color: Colors.amber,)),
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
                          content: Text("Saved!"),
                        );
                      },
                    );
                  },
                  child: Text('Save',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
