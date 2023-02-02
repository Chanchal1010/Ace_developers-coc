import 'package:flutter/material.dart';


class Successful extends StatefulWidget {
  Successful({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all( 20.0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset
                    ('assets/images/tick final.gif',
                    width:300,
                    height:300,
                    fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text( "order placed successfully!!",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 253, 253, 253),
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ]
            ),
          ),
        ),

          
        
      ),

      
    );
  }
}

class EmptySection {
}