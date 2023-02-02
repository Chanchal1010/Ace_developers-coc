import 'package:flutter/material.dart';
import 'package:kitab_khana/collect/collect_main.dart';
import 'package:kitab_khana/homePage/main_home.dart';
import 'package:kitab_khana/splashscreen.dart';
//import 'package:kitab_khana/views/addproduct_screen.dart';

import 'Authentication/login.dart';
import 'Authentication/register.dart';
import 'collect/buyNow.dart';
import 'collect/pickup.dart';
import 'collect/success.dart';
import 'donate/donate_main.dart';
import 'donate/last.dart';
import 'donate/pick_up.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitab Khana',
      theme: ThemeData(
     
      ),
      // home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => signup(),
        // '/home':(context) => home(),
        "/collect": (context) => collect(),
            "/uploadpic": (context) => uploadpic(),
        

        "/pickup": (context) => pickpage(),
          "/success": (context) => Success(),
         "/buynow": (context) => buynow(),
         "/delivery":(context) => delivery(),
         "/successcollect":(context) => Successful(),

        // '/paymentHistory': (context) => paymentHistory(),
        // "/MySchemes": (context) => MySchemes(),
      },
    );
  }
}

