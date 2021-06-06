import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloqueaCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              _crearSlider(),
              _crearChebox(),
              _crearSwitch(),
              Expanded(
                child: _crearImagen(),
              ),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.purple,
        label: 'Tamaño de la Imagen',
        divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloqueaCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest?cb=20180410032118&path-prefix=es'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearChebox() {
    // return Checkbox(
    //     value: _bloqueaCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloqueaCheck = valor!;
    //       });
    //     });
    return CheckboxListTile(
        title: Text('bloquer Slider'),
        value: _bloqueaCheck,
        onChanged: (valor) {
          setState(() {
            _bloqueaCheck = valor!;
          });
        });
  }

  _crearSwitch() {
    return SwitchListTile(
        title: Text('bloquer Slider'),
        value: _bloqueaCheck,
        onChanged: (valor) {
          setState(() {
            _bloqueaCheck = valor;
          });
        });
  }
}
