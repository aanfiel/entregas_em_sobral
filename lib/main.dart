import 'package:entregasemsobral/faca_parte.dart';
import 'package:entregasemsobral/founders.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override



  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entregas em Sobral',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/facaparte': (context) => FacaParte(),
        '/contato': (context) => FaleConosco(),
      },
    );
  }
}
