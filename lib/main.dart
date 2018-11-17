import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(new CameraApp());

class CameraApp extends StatefulWidget {

  @override
  _CameraAppState createState() => new _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {

  File image ;

  picker()async{
      File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    // File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if(img != null){
      image = img;
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Camera'),
        ),
        body:   Center(
          child: image == null ? Text('No Image') : Image.file(image),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: picker,child: Icon(Icons.camera),
        ),
      ),
    );
  }
}
