import 'package:rxdart/rxdart.dart';
import 'dart:async';
import 'package:rxdart/transformers.dart';
import 'package:logindeunaapp/src/blocs/validators.dart';

class LoginBloc with Validators {
  final _emailcontroler = BehaviorSubject<String>();
  final _passwordcontroler = BehaviorSubject<String>();

  //recuperar la salida del stream
  Stream<String> get emailStream =>_emailcontroler.stream.transform(validarEmail);
  Stream<String> get passwordStream =>_passwordcontroler.stream.transform(validarPassword);
  Stream<bool> get formValidStream =>CombineLatestStream.combine2(emailStream, passwordStream, (e, p) => true);
  //Stream<bool> get formValidStream => Observable.combineLatest2(emailStream, passwordStream, (e, p) => true);
  //lo de arriba es como esta en el video pero da errr
  // Stream<bool> get formValidStream => CombineLatestStream.combine2(emailStream, passwordStream, (e, p) => true);
  //lo de aqui es un solucion de chatgpt
  // la otras solucion es del video que vi es al obervable combiale por Rx
  //insertar valores al stream
  Function(String) get changeEmail => _emailcontroler.sink.add;
  Function(String) get changePassword => _passwordcontroler.sink.add;
  //sanjnsja
  dispose() {
    _emailcontroler.close();
    _passwordcontroler.close();
  }
}
