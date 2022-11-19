import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String app = "kitab khana";
  final String name = "ace_developer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KITAB KHANA"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $app an app by team $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
