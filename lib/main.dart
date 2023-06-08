import 'package:flutter/material.dart';

import 'package:logindeunaapp/src/blocs/provide.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:logindeunaapp/src/pages/home_page.dart';
import 'package:logindeunaapp/src/pages/login_page.dart';
import 'package:logindeunaapp/src/pages/mantenimientopreventivo_page.dart';
//import 'package:provider/provider.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'HomePage': (BuildContext context) => homePage(),
        'MantenimentoPreventivo': (BuildContext context) => PreventivoPage(),
       
      },
    ));
  }
}
