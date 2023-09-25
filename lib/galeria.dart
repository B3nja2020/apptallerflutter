import 'package:flutter/material.dart';

class GaleriaPage extends StatelessWidget {
  final List<String> imagenes = [
    'assets/imagen1.jpeg',
    'assets/imagen2.jpg',
    'assets/imagen3.jpg',
  ];

  final List<String> nombres = [
    'Balto',
    'Luna',
    'Max',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería de Imágenes'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Cambia el número de columnas según tus necesidades
        ),
        itemCount: imagenes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetalleImagen(
                    imagenUrl: imagenes[index],
                    nombreImagen: nombres[index], 
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagenes[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetalleImagen extends StatelessWidget {
  final String imagenUrl;
  final String nombreImagen;

  DetalleImagen({required this.imagenUrl, required this.nombreImagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pawpatitas'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              imagenUrl,
              fit: BoxFit.contain, 
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Nombre:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8), 
                Text(
                  nombreImagen,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                 
                },
              ),
              Text('0'), // Muestra la cantidad de "Me gusta".
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GaleriaPage(),
  ));
}
