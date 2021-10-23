final createTable = '''
  CREATE TABLE contact(
    id INT PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,telefone CHAR(16) NOT NULL
    ,nomeACS CHAR(150) 
    ,numeroFami CHAR(10) NOT NULL 
  )
''';

final insert1 = '''
INSERT INTO contact (nome, telefone, nomeACS, numeroFami)
VALUES ('Pietro','(11) 9 9874-5656','Fátima','3456')
''';

final insert2 = '''
INSERT INTO contact(nome, telefone, nomeACS, numeroFami)
VALUES ('Maitê','(11) 9 9632-8578', 'Valéria','2090')
''';

final insert3 = '''
INSERT INTO contact (nome, telefone, nomeACS, numeroFami)
VALUES ('Hortência','(11) 9 9562-3356','Zilma','0054')
''';
