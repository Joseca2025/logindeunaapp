import 'package:flutter/material.dart';

import '../utils/utils.dart' as utils;
//import '../utils/utils.dart';

class PreventivoPage extends StatefulWidget {
  @override
  State<PreventivoPage> createState() => _PreventivoPageState();
}

class _PreventivoPageState extends State<PreventivoPage> {
  // const PreventivoPage({super.key}); // esto solo lo comente porque en el video no aparece posible que lo descomente
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mantenimiento Preventivo'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle),
            tooltip: 'Registrar Mantenimiento',
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(15.0),
        child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                _crearnombre(),
                _crearprecio(),
                _crearboton(),
              ],
            )),
      )),
    );
  }

  Widget _crearnombre() {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Nombre del Mantenimiento'),
      validator: (value) {
        if (value?.length == 3 ||
            value?.length == 2 ||
            value?.length == 1 ||
            value?.length == 0) {
          return 'Ingrese nombre del mantenimiento con mas de 3 caracteres ';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearprecio() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(labelText: 'Precio'),
      validator: (value) {
        if (utils.isnumero(value as String)) {
          return null;
        } else {
          return 'Solo introducir numeros';
        }
      },
    );
  }

  Widget _crearboton() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      //color:Colors.blueAccent,
      icon: Icon(Icons.save_alt),
      onPressed: _submit,
      label: Text('Registrar'),
    );
  }

  void _submit() {
    //if (formkey.currentState?.validate()) return;
    formkey.currentState?.validate();
  }
}
