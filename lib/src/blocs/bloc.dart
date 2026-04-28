import 'dart:async';
import 'validators.dart';

class Bloc with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  // Getters to add data to streams email
  Function(String) get changeEmail => _emailController.sink.add;
  Stream<String> get email => _emailController.stream.transform(validateEmail);

  // Getters to add data to streams password
  Function(String) get changePassword => _passwordController.sink.add;
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
