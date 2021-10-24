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
              padding: const EdgeInsets.all(25),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 1,
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.pink[50],
                  shadowColor: Colors.black54,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).pushNamed('Agenda');
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        GridTile(
                          footer: Container(
                            color: Colors.pink[50],
                            child: Center(
                              child: Text(
                                'Agenda',
                                textScaleFactor: 4,
                              ),
                            ),
                          ),
                          child: Ink.image(
                            image: AssetImage(
                              'assets/Imagens/AgendaHome.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.pink[50],
                  shadowColor: Colors.black54,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Fluxogramas'),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.pink[50],
                  shadowColor: Colors.black54,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
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
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 1,
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.pink[50],
                  shadowColor: Colors.black54,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text('Diagnósticos NANDA'),
                      )),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.pink[50],
                  shadowColor: Colors.black54,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Livro Atenção saude da mulher'),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.pink[50],
                  shadowColor: Colors.black54,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Livros Atenção Básica SUS'),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.pink[50],
                  shadowColor: Colors.black54,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
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
