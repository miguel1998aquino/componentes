import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProviders {
  List<dynamic> opciones = [];

  _MenuProviders() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/datos.json');
    Map mapData = json.decode(resp);
    opciones = mapData['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProviders();
