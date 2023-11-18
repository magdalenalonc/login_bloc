import 'dart:async';

import 'validators.dart';

final bloc = Bloc();

class Bloc with Validators {
  final StreamController<String> _emailController = StreamController<String>();
  final StreamController<String> _passwordController =
      StreamController<String>();

  // Add data to stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  // Retrieve data from stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
