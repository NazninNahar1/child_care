import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_rounded),
                  Container(
                    height: 60,
                    width: 315,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepPurple,
                    ),
                    child: const Center(child: Text('Home',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container
                  (child: Image.asset('asset/doctorIcon.png')),
                Container(
                  height: 60,
                  width: 315,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepPurple,
                  ),
                  child: const Center(child: Text('Home',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

