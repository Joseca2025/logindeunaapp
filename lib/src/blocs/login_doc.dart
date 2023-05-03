import 'package:rxdart/rxdart.dart';

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logindeunaapp/src/blocs/validators.dart';

class LoginBloc with Validators {
  final _emailcontroler = BehaviorSubject<String>();
  final _passwordcontroler = BehaviorSubject<String>();

  //recuperar la salida del stream
  Stream<String> get emailStream =>
      _emailcontroler.stream.transform(validarEmail);
  Stream<String> get passwordStream =>
      _passwordcontroler.stream.transform(validarPassword);

  Stream<bool> get formValidStream =>
      Observable.combineLatest2(emailStream, passwordStream, (e, p) => true);
  //insertar valores al stream
  Function(String) get changeEmail => _emailcontroler.sink.add;
  Function(String) get changePassword => _passwordcontroler.sink.add;
  //sanjnsja
  dispose() {
    _emailcontroler.close();
    _passwordcontroler.close();
  }
}
