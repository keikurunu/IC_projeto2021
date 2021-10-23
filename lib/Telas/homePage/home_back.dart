import 'package:flutter/material.dart';
import 'package:ic_projeto/Database/bancodedados.dart';
import 'package:ic_projeto/Telas/homePage/home.dart';

import 'Componentes/listadados.dart';
import '../lista/listadadosusuaros.dart';

class Homeback extends StatefulWidget {
  @override
  _HomebackState createState() => _HomebackState();
}

class _HomebackState extends State<Homeback> {
  int paginaAtual = 0;
  PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          Homepage(),
          ContactList(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pink[400],
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'lista'),
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: Duration(milliseconds: 600),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}

class Test1 {}
