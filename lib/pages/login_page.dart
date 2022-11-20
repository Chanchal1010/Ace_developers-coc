import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var material = Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/book_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "WELCOME",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter USername",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter email adddress",
                    labelText: "EMAIL ADDRESS",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "PASSWORD",
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                  child: Text("LOGIN"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Hi buddy!!!");
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
    return material;
  }
}
