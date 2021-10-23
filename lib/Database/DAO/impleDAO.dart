import 'package:ic_projeto/Database/DAO/metDAO.dart';
import 'package:ic_projeto/Database/bancodedados.dart';
import 'package:ic_projeto/Database/contact_dominio/contact.dart';
import 'package:sqflite/sqflite.dart';

class ContactDAOImpl implements ContactDAO {
  Database _db;

  @override
  Future<List<Contact>> find() async {
    _db = await Connection.get();
    List<Map<String, dynamic>> resultado = await _db.query('contact');
    List<Contact> lista = List.generate(resultado.length, (i) {
      var linha = resultado[i];
      return Contact(
        id: linha['id'],
        nome: linha['nome'],
        telefone: linha['telefone'],
        nomeACS: linha['nomeACS'],
        numeroFami: linha['numeroFami'],
      );
    });

    return lista;
  }

  @override
  remove(int id) async {
    _db = await Connection.get();
    var sql = 'DELETE FROM contact WHERE id = ?';
    _db.rawDelete(sql, [id]);
  }

  @override
  save(Contact contact) async {
    _db = await Connection.get();
    var sql;
    if (contact.id == null) {
      sql =
          'INSERT INTO contact (nome, telefone,nomeACS,numeroFami) VALUES (?,?,?,?)';
      _db.rawInsert(sql, [
        contact.nome,
        contact.telefone,
        contact.nomeACS,
        contact.numeroFami,
      ]);
    } else {
      sql =
          'UPDATE contact SET nome = ?, telefone =?, nomeACS = ?, numeroFami= ? WHERE id = ?';
      _db.rawUpdate(sql, [contact.nome, contact.telefone, contact.id]);
    }
  }
}
