import 'dart:async';

import 'package:rxdart/rxdart.dart';

import 'validators.dart';

class Bloc with Validators {
  // BehaviorSubject is a special StreamController that captures the latest item that has been added to the controller, and emits that as the first item to any new listener
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // Add data to stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  Stream<bool> get submitValid => Rx.combineLatest2(
        email,
        password,
        (e, p) => true,
      );

  // Retrieve data from stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
