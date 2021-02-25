import 'package:flutter/material.dart';

class convert extends StatelessWidget{
  final Function konvertHandler;
  convert({Key key, @required this.konvertHandler});
  @override
  Widget build(BuildContext context){
    return Container(
       width: double.infinity,
       height: 50,
       child: RaisedButton(onPressed: konvertHandler,
       color: Colors.blueAccent,
       textColor: Colors.white,
       child: Text("Konveksi Suhu")
       ),
    );
  }
}
