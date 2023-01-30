import 'package:child_care/screens/ambulance_list.dart';
import 'package:child_care/screens/apointment.dart';
import 'package:child_care/screens/diet_chart/diet_one.dart';
import 'package:child_care/screens/diet_chart/quick_sugestion.dart';
import 'package:child_care/screens/login.dart';
import 'package:child_care/screens/notes/notes_one.dart';
import 'package:child_care/screens/splash.dart';
import 'package:child_care/screens/splash_screen.dart';
import 'package:child_care/screens/vaccine/chicken_pox.dart';
import 'package:child_care/screens/vaccine/rota.dart';
import 'package:child_care/screens/vaccine_list.dart';
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
      home: SplashScreenOne(),
    );
  }
}


