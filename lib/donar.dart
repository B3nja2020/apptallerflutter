import 'package:flutter/material.dart';

class DonarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Ayúdanos a continuar nuestra labor!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Agrega aquí la lógica para procesar la donación
                // Puedes implementar una pasarela de pago, formulario, etc.
              },
              child: Text('Donar Ahora'),
            ),
          ],
        ),
      ),
    );
  }
}
