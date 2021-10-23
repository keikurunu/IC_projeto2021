import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/*class ListaDados extends StatelessWidget {
  final List<bancoDados> listadados;

  ListaDados(this.listadados);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listadados.map((tr) {
        return Card(
          child: Row(
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Familia',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.pink.shade300, width: 2)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Nº ${tr.numerofa.toString()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.pink.shade400,
                        ),
                      ),
                    ),
                  ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tr.nome,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('d MMM y').format(tr.data),
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}*/
