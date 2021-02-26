import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konversi_desain_widget/input.dart';
import 'Convert.dart';
import 'Result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur =0;
  TextEditingController inputController = new TextEditingController();

  void hitungSuhu(){
    setState(() {
      _inputUser=double.parse(inputController.text);
      _kelvin = _inputUser + 273;
      _reamur = (_inputUser*4)/5;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(appBar: AppBar(title: Text("Konverter Suhu"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           Input(inputController: inputController),
            Result(kelvin: _kelvin, reamur: _reamur),
            Convert(konvertHandler: hitungSuhu),
          ],
        ),
      ),
      ),
    );
  }
}


