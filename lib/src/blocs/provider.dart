import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  Provider({super.key, required super.child});

  final bloc = Bloc();

  @override
  bool updateShouldNotify(oldWidget) => true;

  // static method - do not have to create an instance of the provider to call it
  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>())!.bloc;
  }
}
