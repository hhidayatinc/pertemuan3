import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class input extends StatelessWidget {
  const input({Key key,@required this.etInput,}) : super(key: key);
  
  final TextEditingController etInput;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:  InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
      );
    } 
 }