import 'package:flutter/material.dart';
import 'package:productdetails/main.dart';
import 'package:productdetails/productdetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: productdetails(),
    );
  }
}
