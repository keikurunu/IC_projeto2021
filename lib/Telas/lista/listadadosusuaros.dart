import 'package:flutter/material.dart';
import 'package:ic_projeto/Database/DAO/impleDAO.dart';
import 'package:ic_projeto/Database/contact_dominio/contact.dart';

class ContactList extends StatelessWidget {
  Future<List<Contact>> _buscar() async {
    return ContactDAOImpl().find();
  }

  /*Widget iconRemoveButton(BuildContext context, Function remove) {
    return IconButton(
        icon: Icon(Icons.delete),
        color: Colors.red,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text('Excluir'),
                    content: Text('Confirma a Exclusão?'),
                    actions: [
                      FlatButton(
                        child: Text('Não'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      FlatButton(
                        child: Text('Sim'),
                        onPressed: remove,
                      ),
                    ],
                  ));
        });
  }*/

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _buscar(),
      builder: (context, futuro) {
        if (futuro.hasData) {
          List<Contact> lista = futuro.data;
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Lista de Pacientes'),
              elevation: 20,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Imagens/imageHome.jpg'),
                  ),
                ),
              ),
            ),
            body: ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, i) {
                var contato = lista[i];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: ListTile(
                      title: Text(contato.nome),
                      subtitle: Text(contato.telefone),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.black,
                                onPressed: null),
                            IconButton(
                                icon: Icon(Icons.delete),
                                color: Colors.black,
                                onPressed: null),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed('formadd');
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.pink.shade400,
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Lista de Pacientes'),
              elevation: 20,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Imagens/imageHome.jpg'),
                  ),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed('formadd');
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.pink.shade400,
            ),
          );
        }
      },
    );
  }
}
