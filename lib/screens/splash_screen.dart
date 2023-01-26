import 'package:flutter/material.dart';

import '../widgets/custom_animated_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //   width: 4,
                  //   color: Color(0xffD6E0FF),
                  // ),
                ),
                child: Image.asset(
                  'asset/splash.png',
                  fit: BoxFit.cover,
                ),
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "Best",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                  TextSpan(
                    text: ' Healthcare',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  TextSpan(
                    text: " \n for your child!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ]),
              ),
              SizedBox(height: 15),
              const Center(
                  child: Text(
                'Treatment from best specilists from around. Make your childcare easier',
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: -1,
                    fontWeight: FontWeight.w400),
              )),
              const SizedBox(
                height: 200,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
