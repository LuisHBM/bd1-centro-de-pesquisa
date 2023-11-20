INSERT INTO centro_de_pesquisa.estado (nome) VALUES
    ('Bahia'),
    ('São Paulo'),
    ('Minas Gerais'),
    ('Rio de Janeiro'),
    ('Pernambuco'),
    ('Amazonas'),
    ('Espírito Santo'),
    ('Goiás'),
    ('Paraná'),
    ('Rio Grande do Sul'),
    ('Ceará'),
    ('Pará'),
    ('Santa Catarina'),
    ('Maranhão'),
    ('Distrito Federal');

INSERT INTO centro_de_pesquisa.cidade (estado_idestado, nome) VALUES
    (1, 'Salvador'),
    (2, 'Campinas'),
    (3, 'Belo Horizonte'),
    (4, 'Rio de Janeiro'),
    (5, 'Recife'),
    (6, 'Manaus'),
    (7, 'Vitória'),
    (8, 'Goiânia'),
    (9, 'Curitiba'),
    (10, 'Porto Alegre'),
    (11, 'Fortaleza'),
    (12, 'Belém'),
    (13, 'Florianópolis'),
    (14, 'São Luís'),
    (15, 'Brasília');

INSERT INTO centro_de_pesquisa.bairro (cidade_idcidade, nome) VALUES
    (1, 'Pituba'),
    (2, 'Cambuí'),
    (3, 'Savassi'),
    (4, 'Copacabana'),
    (5, 'Boa Viagem'),
    (6, 'Adrianópolis'),
    (7, 'Jardim da Penha'),
    (8, 'Setor Marista'),
    (9, 'Batel'),
    (10, 'Moinhos de Vento'),
    (11, 'Meireles'),
    (12, 'Nazaré'),
    (13, 'Centro'),
    (14, 'Renascença'),
    (15, 'Asa Sul');

INSERT INTO centro_de_pesquisa.`conta corrente` (agência, conta, digito_verificador, nome_do_banco) VALUES
    ('1234', '987654321', '1', 'Banco do Brasil'),
    ('6754', '987654321', '6', 'Banco do Brasil'),
    ('7896', '987654321', '2', 'Banco do Brasil'),
    ('3847', '987654321', '4', 'Banco do Brasil'),
    ('5678', '937488383', '3', 'Santander'),
    ('5678', '365995455', '7', 'Santander'),
    ('5678', '345647678', '9', 'Santander'),
    ('5678', '123456789', '1', 'Santander'),
    ('4321', '789456123', '3', 'Caixa');
    ('4545', '743543666', '3', 'Caixa');
    ('3244', '234930559', '3', 'Caixa');
    ('5678', '123456789', '7', 'Itaú'),
    ('5678', '123456789', '5', 'Itaú'),
    ('5678', '123456789', '3', 'Itaú'),
    ('5678', '123456789', '2', 'Itaú'),