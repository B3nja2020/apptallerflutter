import 'package:appflutter/login.dart'; // Importa la clase LoginPage desde login.dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // Cambia la página de inicio a LoginPage
      home: LoginPage(),
    );
  }
}
