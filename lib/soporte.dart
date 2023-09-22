import 'package:flutter/material.dart';

class SoportePage extends StatelessWidget {
  final PageController _pageController = PageController();
  final List<String> consejos = [
    'Proporciona una alimentación equilibrada y adecuada para tu mascota.',
    'Asegúrate de que tu mascota tenga suficiente ejercicio y actividad física.',
    'Programa revisiones veterinarias regulares para mantener la salud de tu mascota.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Soporte', style: TextStyle(fontSize: 45))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {          
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Dejar un Comentario'),
                      content: Text('Agrega tu comentario aquí.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cerrar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: ListTile(
                title: Text('Dejar un Comentario'),
                leading: Icon(Icons.comment),
              ),
            ),
            Divider(), 
            InkWell(
              onTap: () {               
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Notificar Animal en Abandono'),
                      content: Text('Completa el formulario de notificación.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cerrar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: ListTile(
                title: Text('Notificar Animal en Abandono'),
                leading: Icon(Icons.report),
              ),
            ),
            Divider(), 
            InkWell(
              onTap: () {                
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Consejos Cuidado Animal'),
                      content: Container(
                        height: 200.0,
                        width: 300.0,
                        child: Column(
                          children: [
                            Expanded(
                              child: PageView.builder(
                                controller: _pageController,
                                itemCount: consejos.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: Icon(Icons.lightbulb_outline),
                                    title: Text('Consejo ${index + 1}'),
                                    subtitle: Text(consejos[index]),
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    //retroceder
                                    _pageController.previousPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.close),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.arrow_forward),
                                  onPressed: () {
                                    // Avanzar consejo
                                    _pageController.nextPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                title: Text('Consejos Cuidado Animal'),
                leading: Icon(Icons.lightbulb),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: SoportePage(),
    ),
  );
}
