import 'package:flutter/material.dart';

import '../screens/login.dart';
class CustomAnimatedButton extends StatefulWidget {

  CustomAnimatedButton({Key? key,}) : super(key: key);

  @override
  State<CustomAnimatedButton> createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  double boxX =-1;
  bool istapped =false;
  Color boxColor= Color(0xffa817c2);
  String text = 'Get Started!';

  bool TapToggle(){
    return istapped = !istapped;
  }
  void ontapped(){
    setState(() {
      MoveBox();
      changeBoxColor();
      TapToggle();
      print('tapped');
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
  }
  void MoveBox(){
    setState(() {
      if(istapped==false){
        boxX=1;
      }else{
        boxX=-1;
      }
    });
  }
  void changeBoxColor(){
    setState(() {
      if(istapped==false){
        boxColor =Color(0xfff0ccf8);
      }else{
        boxColor = Color(0xffa817c2);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: ontapped,
            child: AnimatedContainer(
              height: 50,
              width: 309,
              decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              duration: Duration(milliseconds: 400),
              child: Row(
                children:[
                  Stack(children: [
                    Center(
                      child: Row(

                        children:  [
                          const SizedBox(width:200 ),
                          Text(text,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: AnimatedContainer(
                        duration:  Duration(milliseconds: 400),
                        alignment: Alignment(boxX,0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: const Center(child: Icon(Icons.arrow_forward_ios,color: Color(0xffa817c2),)),

                        ),
                      ),
                    )

                  ],),

                ] ,
              ),
            ),
          )
        ],
      );

  }
}
