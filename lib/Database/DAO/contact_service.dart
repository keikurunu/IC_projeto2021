import 'package:get_it/get_it.dart';
import 'package:ic_projeto/Database/DAO/domain.dart';
import 'package:ic_projeto/Database/DAO/metDAO.dart';
import 'package:ic_projeto/Database/contact_dominio/contact.dart';

class ContactService {
  var _dao = GetIt.I.get<ContactDAO>();
// tem que salvar um contato, ter a possibilidade de alterar e excluir e listar todos os contatos
  save(Contact contact) {
    validateName(contact.nome);
    validatePhone(contact.telefone);
    validatePhone(contact.nomeACS);
    validatePhone(contact.numeroFami);
    _dao.save(contact);
  }

  remove(int id) {
    _dao.remove(id);
  }

  Future<List<Contact>> find() {
    return _dao.find();
  }

// nome → seja obrigatório, tenha no mínimo 3 caracteres e no máximo 50
  validateName(String name) {
    var min = 3;
    var max = 50;

    if (name == null) {
      throw new DomainLayerException('O nome é obrigatório.');
    } else if (name.length < min) {
      throw new DomainLayerException(
          'O nome deve possuir pelo menos $min caracteres.');
    } else if (name.length > max) {
      throw new DomainLayerException(
          'O nome deve possuir no máximo $max caracteres.');
    }
  }

// e-mail → seja obrigatório e tenha @
  validateEmail(String email) {
    if (email == null) {
      throw new DomainLayerException('O e-mail é obrigatório.');
    } else if (!email.contains('@')) {
      throw new DomainLayerException('O e-mail deve possuir @.');
    }
  }

// telefone → seja obrigatório e tenha o formato (99) 9 9999-9999
  validatePhone(String phone) {
    var format = RegExp(
        r'^\([1-9]{2}\) [9] [6-9]{1}[0-9]{3}\-[0-9]{4}$'); // (99) 9 9999-9999
    if (phone == null) {
      throw new DomainLayerException('O telefone é obrigatório.');
    } else if (!format.hasMatch(phone)) {
      throw new DomainLayerException(
          'Formato inválido. O formato deve ser (99) 9 9999-9999.');
    }
  }
}
