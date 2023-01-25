import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .5,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: const Color(0xff6474FB),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Color(0xffD6E0FF),
                      )),
                  child: Image.asset(
                    'asset/circle.png',
                    fit: BoxFit.cover,
                  ),

                ),

                const Text(
                  'Mental health and welness',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff6474FB),
                    wordSpacing: -10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(onPressed: (){},child: const Icon(Icons.arrow_forward_outlined),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
