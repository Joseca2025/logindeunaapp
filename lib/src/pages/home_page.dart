import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGINA DE INCIO'),
      ),
      body: Container(),
      floatingActionButton: _buttonpreventivo(context),
    );
  }

  _buttonpreventivo(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.build_circle_outlined),
      onPressed: () => Navigator.pushNamed(context, 'MantenimentoPreventivo'),
    );
  }
}
