import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamur,
  }) : _kelvin = kelvin, _reamur = reamur, super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Suhu dalam Kelvin", 
            style: TextStyle(fontSize: 20),), 
            Text("$_kelvin", style: TextStyle(fontSize: 20),)],
          ),
          margin: EdgeInsets.all(8),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Suhu dalam Reamur", 
            style: TextStyle(fontSize: 20),), 
            Text("$_reamur", style: TextStyle(fontSize: 20),)],
          ),
          margin: EdgeInsets.all(8),
        ),
      ],
            );
  }
}

