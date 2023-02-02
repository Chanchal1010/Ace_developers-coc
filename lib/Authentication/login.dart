import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:kitabkhana/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../homePage/main_home.dart';
// import 'package:kitabkhana/widgets/collect.dart';
// import 'package:kitabkhana/widgets/signup_pade.dart';
class LoginPage extends StatelessWidget {

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
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/final logo.png'),
                  ),
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
                                     Color.fromARGB(255, 83, 49, 218),
                                     Color.fromARGB(255, 107, 187, 209),
                                    ]
                                )
                            ),

                          ),
                          TextFormField(
                            controller: email,

                            decoration: InputDecoration(
                              hintText: "Enter email id",
                              labelText: "Email id",
                            ),

                          ),
                          TextFormField(
                            controller: password,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: "Enter the password ",
                              labelText: "Password",
                            ),
                          ),
                          SizedBox(
                            height: 100.0,
                          ),
                          ElevatedButton(
                            child: Text("Login"),
                            style: TextButton.styleFrom(minimumSize: Size(150, 50)
                            ),
                            onPressed: () {
                             
                              FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                  email: email.text, password: password.text)
                                  .then((user) => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => home())))
                                  .catchError((e) {
                                    print(e) ;
                                Fluttertoast.showToast(msg: "Password is invalid");
                              });
                             
                            },
                          ),
                          TextButton(
                            child: Text("register"),
                            style: TextButton.styleFrom(minimumSize: Size(150, 50)
                            ),
                            onPressed: () {
                             
                               Navigator.pushNamed( context, '/register');
                            },
                          ),
                        
                        ],
                      ))
                ]),
              )
          )
      ),
    );
  }
}