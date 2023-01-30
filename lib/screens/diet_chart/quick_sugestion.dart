import 'package:flutter/material.dart';

import 'diet_one.dart';



class Suggestion extends StatefulWidget {
  @override
  _SuggestionState createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Child Diet Chart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text("Quick Suggestions",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .5,
            margin: EdgeInsets.all(20),
            color: Color(0xff24678),
            child: Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Table(
                        children: [
                          TableRow(children: [

                            Text("Symptoms",style: kdiettext,),
                            Text("HomeCare\n",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("Fever",style: kdiettext,),
                            Text("Drink enough fluid,rest\n",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("Vomiting",style: kdiettext,),
                            Text("Eat soft foods and\n give cold compress\n",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("Caugh",style: kdiettext,),
                            Text("Liquid type foods,\nSalaine\n",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("Diarrhoea",style: kdiettext,),
                            Text("Drink hot water,\n use mask",style: kdiettext,),
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
