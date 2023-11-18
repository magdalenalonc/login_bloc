import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget emailField() {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordField() {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
      autocorrect: false,
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
