import 'package:flutter/material.dart';


class pickpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var material=SafeArea(
      child: Material(
        child: Column(
          children: [
          // Image.asset(
          //     "assets/images/book_cover.png"),
        
            SizedBox(
              height: 15,
            ),
           Text(
              "BOOK NAME",
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
                      hintText: "An book for mechanical engineering students.",
                      labelText: "About book",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "abc colony,mumbai",
                      labelText: "Seller ADDRESS",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "9xxxx2546x",
                      labelText: "Contact details",
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    child: Text("Donate"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("Thank you");
                      Navigator.pushNamed(context, "/success") ; 
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
    return material;
  }
}

 

