import 'package:flutter/material.dart';

void main() {
  runApp (MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: MyAppLogin(),
    )
  );
}

class MyAppLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/Logo_pawtitas.png'),
              ),
              Text(
                'Login',
                style: TextStyle(fontFamily: 'Acme', fontSize: 50.0),
              ),
              SizedBox(
                width: 3000.0,
                height: 50.0,
                child: Divider(color: Colors.blueGrey[600]),
              ),
              TextField(
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    suffixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                  height: 18.0,
                  color: Color.fromRGBO(255, 255, 255,
                      0.0) //esto lo hice más que nada para que la línea divisora sea invisible
                  ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(height: 18.0, color: Color.fromRGBO(255, 255, 255, 0.0)),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue)),
                  onPressed: () {}, //Se consultará si existe la cuenta
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0,
                        fontFamily: 'Acme'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}