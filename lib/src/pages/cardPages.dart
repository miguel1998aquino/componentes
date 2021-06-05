import 'package:flutter/material.dart';

class CardPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _carTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.add_to_drive_outlined),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Estamos aprendiendo a hacer una tarjeta con flluter un framework de apps'),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'cancelar',
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'cancelar',
                )),
          ])
        ],
      ),
    );
  }

  Widget _carTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text('no tengo idea que poner'),
          )
        ],
      ),
    );

    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: card,
      ),
    );
  }
}
