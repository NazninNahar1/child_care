import 'package:flutter/material.dart';

TextStyle kdiettext = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

class ChildDietChartOne extends StatefulWidget {
  @override
  _ChildDietChartOneState createState() => _ChildDietChartOneState();
}

class _ChildDietChartOneState extends State<ChildDietChartOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Child Diet Chart"),
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
                  child: Text("5-8 years old",
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

                            Text("Food Item",style: kdiettext,),
                            Text("Amount",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("protin",style: kdiettext,),
                            Text("2-4 ounce\n",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("Vegitables",style: kdiettext,),
                            Text("1-1.5 Cups\n",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("Grains",style: kdiettext,),
                            Text("3-5,ounce\n",style: kdiettext,),
                          ]),
                          TableRow(children: [
                            Text("Dairy",style: kdiettext,),
                            Text("2-2.5,ounce\n",style: kdiettext,),
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
