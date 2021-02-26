
import 'package:flutter/material.dart';

class result extends StatelessWidget{
  const result({Key key, @required double kelvin, double reamur}) : _kelvin=kelvin, _reamur=reamur, super(key: key);
  final double _kelvin;
  final double _reamur;
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        Column(
          children: [Text("Suhu dalam Kelvin", 
          style: TextStyle(fontSize: 20),), 
          Text("$_kelvin", style: TextStyle(fontSize: 20),)],
        ),
         Column(
          children: [Text("Suhu dalam Reamur", 
          style: TextStyle(fontSize: 20),), 
          Text("$_reamur", style: TextStyle(fontSize: 20),)],
        ),
      ],
      );
  }
}