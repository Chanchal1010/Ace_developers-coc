import 'dart:math';

import 'package:flutter/material.dart';f

void main() {
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Your lucky number is ${generateluckynumber()}"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child:Image(
            image: NetworkImage('https://www.holidify.com/images/bgImages/MUMBAI.jpg'),

          )
        )
       ),
      ),
     );
   }

   int generateluckynumber() {
      var random = Random();
      int luckynumber = random.nextInt(10);

      return luckynumber;
   }