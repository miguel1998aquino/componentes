import 'package:flutter/material.dart';

class HomePageTmp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    opciones.forEach((element) {
      final mostrar = ListTile(
        title: Text(element),
        subtitle: Text('cualquier cosa'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );
      lista..add(mostrar)..add(Divider());
    });

    return lista;
  }
}
