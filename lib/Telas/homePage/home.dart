import 'package:flutter/material.dart';
import 'package:ic_projeto/Telas/homePage/AddUsuario/Drawer/mydrawer.dart';
import 'package:ic_projeto/Telas/homePage/AddUsuario/addusuario.dart';
import 'package:ic_projeto/Telas/homePage/Componentes/dadosUsuario.dart';

import 'Componentes/dadosUsuario.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _adicionarUsuario(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return addUsuario();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 20,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/Imagens/imageHome.jpg'),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('formadd');
                },
                child: Icon(Icons.add),
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.assignment_rounded),
              ),
              Tab(
                icon: Icon(Icons.auto_stories_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            new GridView.count(
              primary: false,
              padding: const EdgeInsets.all(30),
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              crossAxisCount: 1,
              children: <Widget>[
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Agenda'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Graficos'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Fluxogramas'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Exames Laboratoriais'),
                    ),
                  ),
                ),
              ],
            ),
            //
            //Segunda pagina da Tab Bar
            //

            new GridView.count(
              primary: false,
              padding: const EdgeInsets.all(30),
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              crossAxisCount: 1,
              children: <Widget>[
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Diagnósticos NANDA'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Livro Atenção saude da mulher'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Livros Atenção Básica SUS'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('Pareceres Normativos'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
