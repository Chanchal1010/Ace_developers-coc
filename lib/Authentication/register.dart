// import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitab_khana/Authentication/login.dart';
import '../homePage/main_home.dart';
// import 'package:kitabkhana/utils/routes.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:kitabkhana/widgets/collect.dart';




class signup extends StatelessWidget {

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
              child: SingleChildScrollView(
                child: Column(children: [
                  // CircleAvatar(
                  //   radius: 50.0,
                  //   backgroundImage: AssetImage('images/kklogos.png'),
                  // ),
                  Text('KITAB KHANA',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.lato().fontFamily,
                      )),
                  Text('YOUR BEST CHOICE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 30.0),
                      child : Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255,139,69, 19),
                                      Color.fromARGB(255,210,105,30),
                                      Color.fromARGB(255,205,133, 63),
                                      Color.fromARGB(255,222,184, 135),
                                      Color.fromARGB(255,255,235, 205),
                                    ]
                                )
                            ),

                          ),
                          TextFormField(
                            controller: email,

                            decoration: InputDecoration(
                              hintText: "Enter username",
                              labelText: "Username",
                            ),

                          ),
                          TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter the password or email",
                              labelText: "Password or email",
                            ),
                          ),
                          SizedBox(
                            height: 100.0,
                          ),
                          ElevatedButton(
                            child: Text("sign up"),
                            style: TextButton.styleFrom(minimumSize: Size(150, 50)
                            ),
                            onPressed: () {
                              FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: email.text, password: password.text)
                          .then((signedInUser) {
                     
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                       

                     
                      }).catchError((e) {
                        print(e);
                      });
                            }
                          )
                        ],
                      ))
                ]),
              )
          )
      ),
    );
  }
}