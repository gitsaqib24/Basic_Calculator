 import 'package:flutter/material.dart';

void main()
{
  runApp(myFlutter());
}

class myFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "myFlutter",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: myHome(),
    );
  }
}

class myHome extends StatefulWidget{
  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculator"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [



              //Result Part
              Container(
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    "Result  =   ",
                    style: TextStyle(fontSize: 40),
                      ),
                    Text(
                      "$result",
                      style: TextStyle(fontSize: 40),
                    ),

                  ],
                ),
              ),




              //input field one
              Container(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: num1,
                  decoration: InputDecoration(
                    hintText: "Enter First Value",
                  ),
                ),
              ),



              //input field two
              Container(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: num2,
                  decoration: InputDecoration(
                    hintText: "Enter Second Value",
                  ),
                ),
              ),



              //buttons Part
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          var no1 = int.parse(num1.text.toString()) ;
                          var no2 = int.parse(num2.text.toString());
                          var add = no1+no2;
                          result = "$add";
                          num1.text="";
                          num2.text="";
                          setState(() {});
                        },
                        child: Text("Add")),
                    Container(width: 10,),
                    ElevatedButton(
                        onPressed: (){
                          var no1 = int.parse(num1.text.toString()) ;
                          var no2 = int.parse(num2.text.toString());
                          var sub = no1-no2;
                          result = "$sub";
                          num1.text="";
                          num2.text="";
                          setState(() {});
                        },
                        child: Text("Sub")),
                    Container(width: 10,),
                    ElevatedButton(
                        onPressed: (){
                          var no1 = int.parse(num1.text.toString()) ;
                          var no2 = int.parse(num2.text.toString());
                          var div = no1/no2;
                          result = "${div.toStringAsFixed(2)}";
                          num1.text="";
                          num2.text="";
                          setState(() {});
                        },
                        child: Text("Div")),
                    Container(width: 10,),
                    ElevatedButton(
                        onPressed: (){
                          var no1 = int.parse(num1.text.toString()) ;
                          var no2 = int.parse(num2.text.toString());
                          var mul = no1*no2;
                          result = "$mul";
                          num1.text="";
                          num2.text="";
                          setState(() {});
                        },
                        child: Text("Mul")),
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
