import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';



class uploadpic extends StatefulWidget {
  const uploadpic({Key? key}) : super(key: key);

  @override 
  _MyHomePageState createState() =>  _MyHomePageState();
}
 class _MyHomePageState extends State<uploadpic> {
  File? _image;

  Future getImage(ImageSource source) async{
    final image = await ImagePicker().pickImage(source: source);
    if( image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pick an image'),
      ),
      body: Center(
        child: Column(
          children: [
          _image != null ? Image.file(
            _image!,
          width:250,
          height:250,
         ): Image.asset('assets/images/upload icon final.png'),
          SizedBox(height: 40),
          CustomButton(
          title: 'Browse', 
          icon: Icons.image_outlined,
          onClick: () =>  getImage(ImageSource.gallery),
          ),
          SizedBox(height: 40),
           CustomButton(
          title: 'Click a picture', 
          icon: Icons.camera,
          onClick: () => getImage(ImageSource.camera) ,
          ),
          SizedBox(height: 80),
          ElevatedButton(
        child: const Text('Next'),
        onPressed:() => Navigator.pushNamed(context, "/pickup"),
      ),
        ],
        ),
      ),
    );
  }
}

Widget CustomButton( {
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
    width: 280,
    child: ElevatedButton(
      onPressed: onClick,
    child: Row(children: [
      Icon(icon),
      const SizedBox(width: 20),
      Text(title)  
    ],
    ),
    
    ),
  );
}