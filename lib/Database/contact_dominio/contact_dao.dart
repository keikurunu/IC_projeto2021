import 'package:ic_projeto/Database/contact_dominio/contact.dart';

abstract class ContactDAO {
  save(Contact contact);

  remove(int id);

  Future<List<Contact>> find();
}
