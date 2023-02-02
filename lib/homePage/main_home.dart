import 'package:flutter/material.dart';

// import 'package:final_coc/pages/uplaod_pic.dart';

class home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 9, 9),
      appBar: AppBar(
        title: Text("KITABKHANA"),
        actions: [
          IconButton(
            onPressed:() {},
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
          padding: EdgeInsets.all( 20.0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset
                    ('assets/images/final logo.png',
                    width:300,
                    height:300,
                    fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text( "   What will you prefer?",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 241, 239, 239),
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: Text("donate"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed:() => Navigator.pushNamed(context,"/uploadpic" ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("OR",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 247, 242, 242),
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: Text("collect"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed:() => Navigator.pushNamed(context,"/collect" ), //jisme teen tab h eng.art.comm
                  ),


                ]
            ),
          ),
        ),

      ),

      //drawer:drawer(),
    );
  }
}


