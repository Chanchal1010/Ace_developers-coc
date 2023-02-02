import 'package:flutter/material.dart';


class buynow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 9, 9, 9),
      appBar: AppBar(
        title: Text("KITABKHANA"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/images/final logo.png'),
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: Text("pick-up?"),
                style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, "/delivery") ;
                },
              ),
            ]),
          ),
        ),
      ),
    
    );
  }
}
