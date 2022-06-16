import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          _crearImgen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          SizedBox(height: 20.0)
        ],
      )),
    );
  }

  Widget _crearImgen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://th.bing.com/th/id/OIP.FCHldmjXJhRMkqDQw1aH_gHaE7?pid=ImgDet&rs=1'),
        height: 200.0,
        fit : BoxFit.cover
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lago con un puente',
                    style: estiloTitulo,
                  ),
                  Text(
                    'Un lago que en Alemania',
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Quis tempor ex proident nulla magna officia Lorem esse commodo culpa officia excepteur consequat. Magna et anim laboris duis minim incididunt. Sint ad excepteur labore ut tempor elit esse magna labore quis ex. Dolore do aliquip nulla voluptate veniam ea enim aliquip. Lorem id minim amet reprehenderit qui eiusmod anim ut. Nisi ex irure nulla cupidatat officia mollit eiusmod non minim Lorem.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}
