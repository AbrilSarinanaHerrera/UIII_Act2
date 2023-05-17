import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App de Abril'),
          backgroundColor: const Color(0xff9a4d60),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.favorite),
              tooltip: 'Soy una accion',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Hola!')));
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              ListTile(
                title: Text('Inicio'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                title: Text('Fotos'),
                leading: Icon(Icons.yard),
                onTap: () {
                  Navigator.pushNamed(context, '/segunda');
                },
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Container(
            margin: const EdgeInsets.all(15),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Color(0xff7a335a)),
            ),
            child: const Text(
              "Abril Maria Sariñana Herrera",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff270325),
                  width: 3.0,
                ),
                bottom: BorderSide(
                  color: Color(0xff270325),
                  width: 3.0,
                ),
              ),
            ),
            child: Image(
              image: AssetImage('assets/p1.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Color(0xff7a335a)),
            ),
            child: const Text(
              "Soy estudiante del cbtis128 de 6i en la especialidad de programacion ",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ]));
  }
}
