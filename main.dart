import 'package:flutter/material.dart';
import 'dart:math';
void main()
{
  runApp(myapp()); // run app ko ak material app chaie and myapp ak app jo ki ak material app chaie and myapp ak sateless widget hai
}
class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      title: "sample app",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  List<Color> randomColorList = [
  Color(0xfff44336),
  Color(0xffe91e63),
  Color(0xff9c27b0),
  Color(0xff673ab7),
  Color(0xff3f51b5),
  Color(0xff2196f3),
  ];

  int index;
  Color colorrightnow;
  void changecolor(){
    setState(() {
      index = Random().nextInt(randomColorList.length);
      colorrightnow= randomColorList[index];
    });
  }


  @override
  Widget build(BuildContext context){
    return Container(
      decoration:BoxDecoration(
        color:colorrightnow,
      ) ,
      child: FlatButton(
        onPressed: changecolor,
        child: Text(
          "change !",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.green,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
    );
  }
}


