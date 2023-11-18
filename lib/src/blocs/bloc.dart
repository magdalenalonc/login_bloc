import 'dart:async';

class Bloc {
  final StreamController<String> _emailController = StreamController<String>();
  final StreamController<String> _passwordController =
      StreamController<String>();

  // Add data to stream
  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;

  // Retrieve data from stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
}
