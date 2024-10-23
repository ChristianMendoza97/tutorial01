import 'package:flutter/material.dart';
import 'pais.dart'; // Asegúrate de importar la clase Pais

class MyApp extends StatefulWidget {
  final String nuevoPais;

  const MyApp(this.nuevoPais, {super.key}); // Agregado 'key' como parámetro opcional

  @override
  State<MyApp> createState() {
    return AdministrarEstado();
  }
}

class AdministrarEstado extends State<MyApp> {
  List<String> listaPaises = [];

  @override
  void initState() {
    super.initState();
    listaPaises = [
      'Argentina',
      'Uruguay',
      'Paraguay',
      'Ecuador',
      'Brasil',
      'Colombia',
      'Peru',
      'Chile',
      'Bolivia',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi primera App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar del Scaffold'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                debugPrint('Click en el botón de búsqueda');
              },
              icon: const Icon(Icons.search),
              color: Colors.black,
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0), // Ajuste de espacio en la parte superior e inferior
          child: SizedBox(
            height: 100, // Ajusta el tamaño del contenedor
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listaPaises.length,
              itemBuilder: (context, position) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0), // Espacio entre los cuadros
                  child: Pais(newCountry: listaPaises[position]),
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Negocios',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Escuela',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              listaPaises.add(widget.nuevoPais);
              debugPrint('Cantidad de países: ${listaPaises.length}');
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
