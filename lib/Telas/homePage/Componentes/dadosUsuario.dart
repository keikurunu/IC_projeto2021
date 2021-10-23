/*import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ic_projeto/Telas/homePage/Componentes/listadados.dart';
import 'dados.dart';
import 'package:ic_projeto/Telas/homePage/AddUsuario/addusuario.dart';

class dadosUsuario extends StatefulWidget {
  @override
  _dadosUsuarioState createState() => _dadosUsuarioState();
}

class _dadosUsuarioState extends State<dadosUsuario> {
  final _bancoDados = [
    bancoDados(
      id: 't1',
      nome: 'Valeria',
      numerofa: 4431,
      data: DateTime.now(),
    ),
    bancoDados(
      id: 't2',
      nome: 'Larissa',
      numerofa: 6652,
      data: DateTime.now(),
    ),
  ];
  _addDados(
    String nome,
    double numerofa,
  ) {
    final novosDados = bancoDados(
      id: Random().nextDouble().toString(),
      nome: nome,
      numerofa: numerofa,
      data: DateTime.now(),
    );

    setState(() {
      _bancoDados.add(novosDados);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListaDados(_bancoDados),
        addUsuario(),
      ],
    );
  }
}*/
