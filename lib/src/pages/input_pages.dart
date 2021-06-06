import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  

  String dropdownValue = 'seleccione';

  List<String> _poderes=['seleccione','volar','rayos X','super Aliento','super Fuerza'];

  TextEditingController _inputFieldDate = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina De Imputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDrowdow(),
          Divider(),
          crearPersona()
        ],
      ),
    );
  }

  _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el Nombre',
          suffixIcon: Icon(Icons.accessibility_new),
          icon: Icon(Icons.account_box)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget crearPersona() {
    return ListTile(
      title: Text('el nombre es:$_nombre'),
      subtitle: Text('El email es: $_email'),
      trailing: Text('Super poder: $dropdownValue'),
    );
  }

  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Ingresa tu email',
          labelText: 'Email',
          helperText: 'Solo es el Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Ingresa tu contraseña',
          labelText: 'Contraseña',
          helperText: 'escirbe tu contraseña',
          suffixIcon: Icon(Icons.lock),
          icon: Icon(Icons.lock_clock)),
      onChanged: (valor) {
        setState(() {});
      },
    );
  }

  _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDate,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Fecha de nacimineto',
          labelText: 'Fecha de Nacimiento',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.arrow_drop_down_circle_rounded)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2019),
        lastDate: new DateTime(2025)
        locale: Locale('es','PR')
        );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDate.text = _fecha;
      });
    }
  }

  

  
  _crearDrowdow() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton<String>(
    value: dropdownValue,
    onChanged: (String? newValue) {
      setState(() {
        dropdownValue= newValue!;
      });
    },
    items: getOpciones(),
    )
      ],
    );
    
    
    
  }
  List<DropdownMenuItem<String>> getOpciones(){
    List<DropdownMenuItem<String>> lista= [];
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(child: Text(poder),value: poder,));
    });
  return lista;
    }
}
