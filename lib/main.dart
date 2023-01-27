import 'package:child_care/screens/ambulance_list.dart';
import 'package:child_care/screens/apointment.dart';
import 'package:child_care/screens/login.dart';
import 'package:child_care/screens/vaccine/chicken_pox.dart';
import 'package:child_care/screens/vaccine/rotata.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: ChickenPox(),
    );
  }
}


