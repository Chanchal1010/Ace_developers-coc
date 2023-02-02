import 'package:flutter/material.dart';
// import 'Drawer.dart';
// import 'appbar1.dart';

class productdetails extends StatefulWidget {
  const productdetails({Key? key}) : super(key: key);

  @override
  State<productdetails> createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 240, 240),
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
      // drawer: Draawer(),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.blue,
                child: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe9Ppjfpy4h4hg5ui-Eim3btOgNsyR9XHYdA&usqp=CAU'),
                  fit: BoxFit.fill,
                ),
              ),
              footer: new Container(
                color: Color.fromARGB(255, 23, 23, 23),
                child: ListTile(
                  leading: new Text("BOOK NAME",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 244, 241, 241))),
                  title: new Row(
                    children: <Widget>[
                      Expanded(child: new Text("")),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  
                  onPressed: () => Navigator.pushNamed(context, "/buynow"),
                  color: Colors.blue,
                  child: new Text(
                    "BUY NOW",
                  ),
                ),
              ),
              new IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
                color: Color.fromARGB(255, 18, 18, 18),
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
                color: Color.fromARGB(255, 20, 19, 19),
              ),
            ],
          ),
          new ListTile(
            title: new Text(
              "PRODUCT DETAILS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            subtitle: new Text(
                '''Entered data br user must be displayed here , for examplePublisher ‏ : ‎ Fingerprint! Publishing (1 February 2021); Prakash Books India Pvt. Ltd.
 anguage ‏ : ‎ English,
Paperback ‏ : ‎ 1264 pages
ISBN-10 ‏ : ‎ 9354401570
ISBN-13 ‏ : ‎ 978-9354401572
Item Weight ‏ : ‎ 940 g
Dimensions ‏ : ‎ 20.3 x 25.4 x 4.7 cm
Country of Origin ‏ : ‎ India
Importer ‏ : ‎ 011-23247062
Packer ‏ : ‎ Prakash Books India Pvt. Ltd'''),
          ),
        ],
      ),
    );
  }
}
