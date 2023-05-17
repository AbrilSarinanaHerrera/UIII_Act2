import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Pestaña TabBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
} // mi aplicacion

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} // home page statefulwidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xff6d2053)),
            tabs: [
              Tab(icon: Icon(Icons.yard)),
              Tab(icon: Icon(Icons.yard)),
              Tab(icon: Icon(Icons.yard)),
            ],
          ),
          title: Text('Fotos de pequeña'),
          backgroundColor: const Color(0xffbc687d),
          centerTitle: true,
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
        body: TabBarView(children: [
          ListView(children: [
            Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('assets/p2.png'),
                  ),
                ),
              ],
            ),
            Text(
              "Foto de Abril con 4 años y sus hermanos. ",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.all(15),
            ),
            ElevatedButton(
              child: const Text('Ok'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ]),
          ListView(children: [
            Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('assets/p3.png'),
                  ),
                ),
              ],
            ),
            Text(
              "Foto de Abril con 6 años y su bote con agua de fruta. ",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.all(15),
            ),
            ElevatedButton(
              child: const Text('Ok'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ]),
          ListView(children: [
            Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('assets/p4.png'),
                  ),
                ),
              ],
            ),
            Text(
              "Foto de Abril con 3 años, quitandole los granos a un maiz.",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.all(15),
            ),
            ElevatedButton(
              child: const Text('Ok'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
                backgroundColor: const Color(0xff000000),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ]),
        ]),
      ),
    );
  }
}
