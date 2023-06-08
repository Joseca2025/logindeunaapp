import 'package:flutter/material.dart';
import 'package:logindeunaapp/src/blocs/login_doc.dart';

export 'package:logindeunaapp/src/blocs/login_doc.dart';

class Provider extends InheritedWidget {
  //static late Provider _instancia;
  //aqui arriba para que pueda dar el codigo segun lo que vi en la documentacioj
  //se le aumenta el late para que pueda darse o funciones
  //factory Provider({Key? key, required Widget child}) {
  //  if (_instancia == null) {
   //   _instancia = new Provider._internal(key: key, child: child);
  //  }
  //  return _instancia;
 // }
  //Provider._internal({Key? key, required Widget child})
    //  : super(key: key, child: child);

  final loginBloc = LoginBloc();

   Provider({Key? key, required Widget child}) : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
  static LoginBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .loginBloc;
  }

//  Provider({required super.child});
}
