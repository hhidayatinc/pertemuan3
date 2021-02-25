import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final inputController = TextEditingController();

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
            Center(
               child: TextFormField(
                 controller: inputController,
                  decoration:  InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
               ),
            ),
            Expanded(
              child: Row(
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
            ),
            ),
            Container(
            child:  RaisedButton(onPressed: (){hitungSuhu();},
            textColor: Colors.white,
            color: Colors.blueAccent,
            child: Text("Konversi Suhu", style: TextStyle(fontSize: 20),
            ),
            ),
            width: double.infinity,
            height: 50,
            ),
          ],
        ),
      ),
      ),
    );
  }
}

