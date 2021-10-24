import 'package:flutter/material.dart';
import 'package:ic_projeto/Telas/homePage/home.dart';
import 'package:ic_projeto/Telas/login/login.dart';
import 'Database/contact_form.dart';
import 'Telas/homePage/AddUsuario/addusuario.dart';
import 'Telas/homePage/Componentes/Agenda.dart';
import 'Telas/homePage/home_back.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IC projeto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: TelaLogin(),
      routes: {
        'Home': (context) => Homepage(),
        'formadd': (context) => addUsuario(),
        'Agenda': (context) => AgendaCalendario(),
        'homeback': (context) => Homeback(),
        'CONTACT_FORM': (context) => ContactForm(),
      },
    );
  }
}
