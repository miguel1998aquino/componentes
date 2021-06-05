
import 'package:componentes/src/providers/menu_providers.dart';
import 'package:componentes/src/util/icono_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: _items(snapshot.data, context),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        });
  }

  List<Widget> _items(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final datos = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.deepPurple[700],
        ),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) {
          //   return AletrPage();
          // });
          // Navigator.push(context, route);

          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones..add(datos)..add(Divider());
    });

    return opciones;
  }
}
