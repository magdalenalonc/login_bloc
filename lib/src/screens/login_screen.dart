import 'package:flutter/material.dart';

import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
            labelText: 'Email Address',
            hintText: 'you@example.com',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: bloc.changeEmail,
        );
      },
    );
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
          obscureText: true,
          autocorrect: false,
          onChanged: bloc.changePassword,
        );
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: const Text('Submit'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Me In!'),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emailField(),
            passwordField(),
            const SizedBox(height: 25.0),
            submitButton(),
          ],
        ),
      ),
    );
  }
}
