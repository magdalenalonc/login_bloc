import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me In',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          appBarTheme:
              AppBarTheme.of(context).copyWith(backgroundColor: Colors.teal),
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
