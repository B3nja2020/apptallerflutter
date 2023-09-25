import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Galería de mascotas'),
        ),
        body: MyGallery(),
      ),
    ),
  );
}

class MyGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(

    );
  }
}