import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50.0, // Altura del banner
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner3.png'), 
                fit: BoxFit.fill, 
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}
