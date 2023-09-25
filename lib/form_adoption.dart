import 'package:flutter/material.dart';

void main() {
  runApp (MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario de adopción'),
        ),
        body: MyFormAdoption(),
      ),
    ),
  );
}

class MyFormAdoption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  const localPhoto1 = 'images/Logo_pawtitas.png';
    return Column(
      children: [
        Center(
          child: SizedBox(
            child: Image.asset(
              localPhoto1,
              width: 150,
              height: 150,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                    labelText: "Nombre",
                    border: OutlineInputBorder(),
                  ),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacío';
                    }
                    return null;
                  },
                ),
              )

            ),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "Raza",
                      border: OutlineInputBorder()
                  ),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacío';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
        const Divider(
            height: 15.0,
            color: Color.fromRGBO(255, 255, 255,
                0.0)
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 17),
                    decoration: const InputDecoration(
                      labelText: "Tipo de animal",
                      border: OutlineInputBorder(),
                    ),
                    textAlign: TextAlign.left,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Campo vacío';
                      }
                      return null;
                    },
                  ),
                )

            ),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "Sexo",
                      border: OutlineInputBorder()
                  ),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacío';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
        const Divider(
            height: 15.0,
            color: Color.fromRGBO(255, 255, 255,
                0.0)
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 17),
                    decoration: const InputDecoration(
                      labelText: "Edad",
                      border: OutlineInputBorder(),
                    ),
                    textAlign: TextAlign.left,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Campo vacío';
                      }
                      return null;
                    },
                  ),
                )

            ),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "Color(es)",
                      border: OutlineInputBorder()
                  ),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacío';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
        const Divider(
            height: 15.0,
            color: Color.fromRGBO(255, 255, 255,
                0.0)
        ),
        Row(
          children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                style: const TextStyle(fontSize: 17),
              decoration: const InputDecoration(
                labelText: "Descripción",
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.left,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Campo vacío';
                }
                  return null;
                },
              ),
            )
          ),
          ]
      ),
        const Divider(
            height: 30.0,
            color: Color.fromRGBO(255, 255, 255,
                0.0)
        ),
        SizedBox(
          width: 200,
          child: TextButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.lightBlue)),
            onPressed: () {}, //Se enviará la solicitud
            child: Text(
              'Enviar solicitud',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                  fontFamily: 'Acme'),
            ),
          ),
        )
      ]
    );
  }
}