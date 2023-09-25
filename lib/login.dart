import 'package:flutter/material.dart';
import 'package:appflutter/home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FractionalTranslation(
            translation: Offset(0.0, -0.65), // Mueve la imagen hacia arriba
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/testeo.png'),
                  fit: BoxFit.cover, // Ajusta la imagen para cubrir toda la pantalla
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/aaaa.png', // Ruta de tu imagen de logo
                  width: 150, // Ajusta el tamaño de la imagen según tus necesidades
                  height: 150,
                ),
                SizedBox(height: 20),
                Card( // Envuelve el formulario en un Card
                  elevation: 8, // Elevación para dar profundidad al Card
                  margin: EdgeInsets.all(16), // Márgenes alrededor del Card
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Iniciar Sesión', // Título dentro del Card
                          style: TextStyle(
                            fontSize: 24, // Tamaño de fuente del título
                            fontWeight: FontWeight.bold, // Negrita
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Correo Electrónico',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red, // Fondo rojo
                            onPrimary: Colors.white, // Texto blanco
                          ),
                          child: Text('Iniciar Sesión'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
