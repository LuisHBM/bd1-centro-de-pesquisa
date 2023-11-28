INSERT INTO centro_de_pesquisa.estado (nome) VALUES
    ('Bahia'),
    ('Sao Paulo'),
    ('Minas Gerais'),
    ('Rio de Janeiro'),
    ('Pernambuco'),
    ('Amazonas'),
    ('Espírito Santo'),
    ('Goias'),
    ('Parana'),
    ('Rio Grande do Sul'),
    ('Ceara'),
    ('Para'),
    ('Santa Catarina'),
    ('Maranhao'),
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
    (14, 'Sao Luís'),
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

INSERT INTO centro_de_pesquisa.conta_corrente (agencia, conta, digito_verificador, nome_do_banco) VALUES
    ('1234', '874287421', '1', 'Banco do Brasil'),
    ('6754', '981212321', '6', 'Banco do Brasil'),
    ('7896', '984343321', '2', 'Banco do Brasil'),
    ('3847', '987654321', '4', 'Banco do Brasil'),
    ('5658', '937488383', '3', 'Santander'),
    ('5128', '365995455', '7', 'Santander'),
    ('5638', '345647678', '9', 'Santander'),
    ('5628', '123456789', '1', 'Santander'),
    ('4321', '789456123', '3', 'Caixa'),
    ('4545', '743543666', '3', 'Caixa'),
    ('3244', '234930559', '3', 'Caixa'),
    ('5608', '867546546', '7', 'Itaú'),
    ('5678', '435456546', '5', 'Itaú'),
    ('5878', '453543546', '3', 'Itaú'),
    ('2338', '092738489', '2', 'Itaú');

INSERT INTO equipe (idequipe, nome_da_equipe, descricao, observacoes) VALUES
    (null, 'MolecInov', 'Pesquisa em genética e biologia molecular para avanços na medicina', 'Equipe altamente especializada em técnicas de sequenciamento de DNA'),
    (null, 'AlgCog', 'Desenvolvimento de algoritmos avançados para soluções em IA', 'Colaborações com instituições acadêmicas e empresas de tecnologia'),
    (null, 'GreenEnergy', 'Pesquisa em fontes de energia sustentaveis e tecnologias limpas', 'Projetos em parceria com indústrias de energia renovavel'),
    (null, 'EcossisGuard', 'Estudo de ecossistemas e conservaçao da biodiversidade', 'Participaçao ativa em projetos de preservaçao ambiental'),
    (null, 'NanoInova', 'Pesquisa em materiais e dispositivos nanoestruturados', 'Publicações em revistas científicas de renome na area'),
    (null, 'AstroFusion', 'Estudo do universo, galaxias e fenômenos cósmicos', 'Participaçao em observatórios internacionais'),
    (null, 'CogNitro', 'Pesquisa em processos mentais, memória e tomada de decisao', 'Colaborações com clínicas de neurologia'),
    (null, 'EngeneX', 'Manipulaçao genética para aplicações médicas e agrícolas', 'Desenvolvimento de terapias gênicas inovadoras'),
    (null, 'ArqueoTech', 'Escavações e estudo de civilizações antigas', 'Descobertas arqueológicas em sítios históricos importantes'),
    (null, 'NeuroDynamics', 'Estudo do sistema nervoso e neuroplasticidade', 'Pesquisas com potencial aplicaçao em reabilitaçao neurológica'),
    (null, 'QuímicaInova', 'Síntese de compostos orgânicos e desenvolvimento de novos materiais', 'Publicações em revistas especializadas em química'),
    (null, 'DataInsight Labs', 'Analise de grandes conjuntos de dados para insights científicos', 'Colaborações com empresas para aplicaçao pratica de descobertas'),
    (null, 'PartículasInov', 'Pesquisa em partículas elementares e física de alta energia', 'Participaçao em experimentos em aceleradores de partículas'),
    (null, 'LinguaTech', 'Estudo da linguagem natural e processamento de linguagem natural', 'Desenvolvimento de algoritmos para reconhecimento de voz'),
    (null, 'SoloTech', 'Investigaçao em propriedades do solo e sustentabilidade agrícola', 'Projetos em parceria com fazendas e instituições agrícolas');

INSERT INTO relatorio_tecnico (idrelatorio_tecnico, titulo, resumo, relatorio, equipe_idequipe) VALUES
    (null, 'Avanços na Genética Molecular', null, 'Aborda avanços significativos nas pesquisas relacionadas à genética molecular, destacando descobertas e técnicas inovadoras.', 1),
    (null, 'Algoritmos Avançados em IA', null, 'Destaca o desenvolvimento de algoritmos avançados e sua aplicaçao em soluções praticas de inteligência artificial.', 2),
    (null, 'Sustentabilidade em Energias Renovaveis', null, 'Aborda os projetos de pesquisa em fontes de energia sustentaveis, com ênfase em colaborações com indústrias de energia renovavel.', 3),
    (null, 'Conservaçao da Biodiversidade', null, 'Destaca a participaçao ativa da equipe em projetos de conservaçao da biodiversidade e preservaçao ambiental.', 4),
    (null, 'Inovações em Nanotecnologia', null, 'Destaca as pesquisas recentes em materiais nanoestruturados, incluindo publicações em revistas científicas de renome na area.', 5),
    (null, 'Explorações Astrofísicas', null, 'Aborda as contribuições da equipe nas explorações astrofísicas, incluindo participaçao em observatórios internacionais.', 6),
    (null, 'Processos Mentais e Tomada de Decisao', null, 'Destaca as pesquisas em processos mentais, memória e tomada de decisao, com colaborações importantes com clínicas de neurologia.', 7),
    (null, 'Manipulaçao Genética Avançada', null, 'Destaca o desenvolvimento de terapias gênicas inovadoras e aplicações em medicina e agricultura.', 8),
    (null, 'Arqueologia e Descobertas Antigas', null, 'Destaca as escavações e descobertas arqueológicas da equipe em sítios históricos importantes.', 9),
    (null, 'Neurociência e Neuroplasticidade', null, 'Destaca as pesquisas em neurociência, com potencial aplicaçao em reabilitaçao neurológica e cuidados de saúde.', 10),
    (null, 'Inovações em Química Orgânica', null, 'Aborda a síntese de compostos orgânicos e o desenvolvimento de novos materiais, com publicações em revistas especializadas.', 11),
    (null, 'Analise Avançada de Dados', null, 'Destaca a analise de grandes conjuntos de dados para obter insights científicos, com colaborações com empresas para aplicaçao pratica.', 12),
    (null, 'Física de Partículas e Experimentos', null, 'Aborda as pesquisas em física de partículas, incluindo a participaçao em experimentos em aceleradores de partículas.', 13),
    (null, 'Linguística Computacional e Reconhecimento de Voz', null, 'Destaca os estudos em linguística computacional, incluindo o desenvolvimento de algoritmos para reconhecimento de voz.', 14),
    (null, 'Ciências do Solo e Sustentabilidade Agrícola', null, 'Aborda as pesquisas em ciências do solo e projetos em parceria com fazendas para promover a sustentabilidade agrícola.', 15);

INSERT INTO pesquisador (idpesquisador, bairro_idbairro, nome, endereco, cep, cpf, data_de_ingresso, data_de_egresso, ativo, area_de_atuacao, id_lattes) VALUES
    (null, 1, 'Josemar Rodrigues Souza', 'Rua A, 123', '35500221', '13043382072', '2005-05-01', null, 1, 'Genética Molecular', '5463076295727564'),
    (null, 2, 'Marco Antônio Costa Simões', 'Rua B, 456', '23456789', '23456789012', '2007-02-28', null, 1, 'IA e Algoritmos', '0319800678858096'),
    (null, 3, 'Ana Patrícia Magalhaes', 'Rua C, 789', '34567890', '34567890123', '2011-5-11', null, 1, 'Energias Renovaveis', '9035802389892301'),
    (null, 4, 'Robson Marinho', 'Rua D, 012', '45678901', '45678901234', '2010-05-02', null, 1, 'Conservaçao Ambiental', '3307568955007464'),
    (null, 5, 'Jorge Campos', 'Rua E, 345', '56789012', '56789012345', '2007-11-02', null, 1, 'Nanotecnologia', '4851786390961391'),
    (null, 6, 'Daniela Barreto', 'Rua F, 678', '67890123', '67890123456', '2002-12-24', null, 1, 'Astrofísica', '1442102224330280'),
    (null, 7, 'Leandro Santos Coelho', 'Rua G, 901', '78901234', '78901234567', '2013-09-05', null, 1, 'Neurociência', '1474574195753600'),
    (null, 8, 'Ernesto Massa', 'Rua H, 234', '89012345', '89012345678', '2020-09-03', null, 1, 'Genética Aplicada', '1849818303242939'),
    (null, 9, 'Diego Suarez', 'Rua I, 567', '90123456', '90123456789', '2007-08-15', "2022-02-01", 0, 'Arqueologia', '1377022547816780'),
    (null, 10, 'Carlos Helano', 'Rua J, 890', '01234567', '01234567890', '2012-12-01', null, 1, 'Neuroplasticidade', '1946944212498166'),
    (null, 11, 'Alexandre Rafael Lenz', 'Rua K, 123', '12345678', '12345678901', '2012-02-24', null, 1, 'Química Orgânica', '9063268848566672'),
    (null, 12, 'Claudio Alves de Amorim', 'Rua L, 456', '23456789', '23456789012', '2003-05-20', null, 1, 'Ciência de Dados', '4976012823452609'),
    (null, 13, 'Antônio Carlos Fontes Atta', 'Rua M, 789', '34567890', '34567890123', '2015-05-03', null, 1, 'Física de Partículas', '3591777818200356'),
    (null, 14, 'Maria Inês Valderrama Restovic', 'Rua N, 012', '45678901', '45678901234', '2009-02-28', null, 1, 'Linguística Computacional', '3352656018233063'),
    (null, 15, 'Gerusa Soares Pinheiro', 'Rua O, 345', '56789012', '56789012345', '2002-08-26', null, 1, 'Agronomia', '0699272930614987'),
    (null, 1, 'Juliana Santos Pereira', 'Rua P, 678', '67890123', '67890123456', '2010-11-15', null, 1, 'Genética Molecular', '7654321098765432'),
    (null, 2, 'Ricardo Almeida Costa', 'Rua Q, 901', '78901234', '78901234567', '2008-02-12', null, 1, 'IA e Algoritmos', '8901234567890123'),
    (null, 3, 'Mariana Viana', 'Rua R, 234', '89012345', '89012345678', '2012-5-01', null, 1, 'Energias Renovaveis', '9012345678901234'),
    (null, 4, 'Fernando Ferreira Lima', 'Rua S, 567', '90123456', '90123456789', '2005-07-02', "2023-02-01", 0, 'Conservaçao Ambiental', '1234567890123456'),
    (null, 5, 'Luciana Campos', 'Rua T, 890', '01234567', '01234567890', '2011-11-15', '2015-06-11', 0, 'Nanotecnologia', '2345678901234567'),
    (null, 6, 'Gabriel Barreto', 'Rua U, 123', '12345678', '12345678901', '2003-12-24', '2009-03-21', 0, 'Astrofísica', '3456789012345678');

INSERT INTO projeto (idprojeto, equipe_idequipe, título, descrição, aprovado) VALUES
    (null, 1, 'Projeto Genoma Humano', 'Sequenciamento do genoma humano para avanços na medicina', 1),
    (null, 2, 'Desenvolvimento de Algoritmos Avançados', 'Criaçao de algoritmos inovadores para soluções em IA', 1),
    (null, 3, 'Pesquisa em Energias Renovaveis', 'Estudo de fontes de energia sustentaveis e tecnologias limpas', 1),
    (null, 4, 'Conservaçao da Biodiversidade', 'Projetos para a preservaçao de ecossistemas e biodiversidade', 1),
    (null, 5, 'Pesquisa em Nanotecnologia', 'Desenvolvimento de materiais e dispositivos nanoestruturados', 1),
    (null, 6, 'Exploraçao Astrofísica', 'Estudo do universo, galaxias e fenômenos cósmicos', 1),
    (null, 7, 'Avanços em Neurociência', 'Pesquisa em processos mentais, memória e tomada de decisao', 0),
    (null, 8, 'Manipulaçao Genética', 'Desenvolvimento de terapias gênicas inovadoras', 1),
    (null, 9, 'Descobertas Antigas', 'Escavações e estudo de civilizações antigas', 0),
    (null, 10, 'Estudo do Sistema Nervoso', 'Pesquisas sobre o sistema nervoso e neuroplasticidade', 1),
    (null, 11, 'Desenvolvimento de Materiais', 'Síntese de compostos orgânicos e desenvolvimento de novos materiais', 1),
    (null, 12, 'Analise de Dados', 'Analise de grandes conjuntos de dados para insights científicos', 1),
    (null, 13, 'Física de Partículas', 'Pesquisa em partículas elementares e física de alta energia', 1),
    (null, 14, 'Processamento de Linguagem Natural', 'Estudo da linguagem natural e processamento de linguagem natural', 0),
    (null, 15, 'Sustentabilidade Agrícola', 'Investigaçao em propriedades do solo e praticas agrícolas sustentaveis', 0);

INSERT INTO subprojeto (projeto_idprojeto, título, justificativa, objetivo, metodologia, referencias) VALUES
    (1, 'Sequenciamento de Regiões Genômicas Específicas', 'Identificar regiões genômicas de interesse para tratamentos médicos específicos.', 'Realizar o sequenciamento detalhado de regiões genômicas específicas para avançar em tratamentos médicos.', 'Sequenciamento de última geraçao e analise bioinformatica avançada.', 'Watson, J. et al. (2021). Avanços no sequenciamento genômico.'),
    (2, 'Desenvolvimento de Algoritmos de Aprendizado Profundo', 'Necessidade de algoritmos mais eficientes e precisos para aplicações de IA.', 'Criar algoritmos avançados de aprendizado profundo para melhorar o desempenho em varias areas.', 'Desenvolvimento e treinamento de redes neurais profundas.', 'LeCun, Y. et al. (2015). Deep learning.'),
    (3, 'Estudo de Viabilidade de Energia Geotérmica', 'Investigar o potencial da energia geotérmica como fonte sustentavel.', 'Avaliar a viabilidade técnica e econômica da energia geotérmica.', 'Modelagem geotérmica e analise de custo-benefício.', 'Smith, A. (2022). Energia geotérmica sustentavel.'),
    (4, 'Monitoramento de Espécies Ameaçadas', 'Preservaçao da biodiversidade e prevençao da extinçao de espécies.', 'Monitorar espécies ameaçadas e seus habitats para estratégias de conservaçao.', 'Uso de tecnologias de rastreamento e analise de padrões de migraçao.', 'Garcia, C. et al. (2019). Conservaçao de espécies.'),
    (5, 'Desenvolvimento de Nanomateriais para Medicina', 'Explorar o potencial de nanomateriais para aplicações médicas.', 'Criar nanomateriais para diagnóstico e tratamentos médicos avançados.', 'Síntese de nanomateriais e testes em modelos biológicos.', 'Taylor, R. et al. (2022). Nanotecnologia médica.'),
    (6, 'Analise de Dados de Ondas Gravitacionais', 'Estudo das ondas gravitacionais e eventos cósmicos de alta energia.', 'Analisar dados de telescópios para identificar e compreender eventos astrofísicos.', 'Analise estatística avançada e modelagem de dados.', 'Abbott, B. et al. (2016). Ondas gravitacionais.'),
    (7, 'Mapeamento Neural de Processos de Decisao', 'Compreender os processos neurais por tras da tomada de decisao.', 'Mapear as areas do cérebro envolvidas em processos de tomada de decisao.', 'Neuroimagem e analise estatística de dados neurais.', 'Cohen, J. et al. (2018). Neurociência e tomada de decisao.'),
    (8, 'Desenvolvimento de Terapias Gênicas para Doenças Hereditarias', 'Criar tratamentos gênicos para doenças genéticas hereditarias.', 'Desenvolver terapias precisas para corrigir mutações genéticas específicas.', 'Ediçao genômica e testes em modelos celulares.', 'Wilson, J. et al. (2019). Terapias gênicas.'),
    (9, 'Escavaçao e Analise de Sítios Arqueológicos', 'Estudar sítios arqueológicos para compreender civilizações antigas.', 'Realizar escavações e analises detalhadas de artefatos antigos.', 'Métodos de escavaçao arqueológica e analise laboratorial.', 'Johnson, M. et al. (2018). Arqueologia de civilizações antigas.'),
    (10, 'Estudo da Neuroplasticidade em Condições Neurológicas', 'Investigar a capacidade do sistema nervoso de se adaptar em condições neurológicas.', 'Compreender como a neuroplasticidade pode ser influenciada por diferentes condições.', 'Testes neuropsicológicos e neuroimagem funcional.', 'Smith, A. et al. (2020). Neuroplasticidade em condições neurológicas.'),
    (11, 'Desenvolvimento de Polímeros Inteligentes', 'Criar polímeros com propriedades avançadas para diversas aplicações.', 'Desenvolver materiais poliméricos inteligentes para varias indústrias.', 'Síntese química e caracterizaçao de polímeros.', 'Brown, B. et al. (2019). Polímeros avançados.'),
    (12, 'Analise de Big Data para Insights Científicos', 'Explorar grandes conjuntos de dados para descobertas científicas.', 'Analisar dados de varias fontes para insights científicos significativos.', 'Processamento de big data e algoritmos de analise.', 'Clark, C. et al. (2021). Analise de big data.'),
    (13, 'Experimentos em Física de Partículas', 'Conduzir experimentos para compreender as propriedades de partículas elementares.', 'Realizar experimentos em laboratório para estudar partículas subatômicas.', 'Aceleradores de partículas e detecçao de alta energia.', 'Gates, S. et al. (2017). Física de partículas elementares.'),
    (14, 'Desenvolvimento de Modelos de Processamento de Linguagem', 'Construir modelos avançados para compreensao e geraçao de linguagem natural.', 'Desenvolver modelos de processamento de linguagem natural mais eficazes.', 'Aprendizado de maquina e redes neurais para processamento de texto.', 'Miller, D. et al. (2022). Processamento de linguagem natural.'),
    (15, 'Estudo de Qualidade do Solo em Diferentes Praticas Agrícolas', 'Analisar a qualidade do solo em métodos agrícolas sustentaveis.', 'Avaliar o impacto de diferentes praticas agrícolas na saúde do solo.', 'Analise química e biológica do solo em diferentes condições.', 'Harris, E. et al. (2020). Qualidade do solo e praticas agrícolas sustentaveis.');

INSERT INTO aluno (matricula, nome, cpf, endereco, cep, ativo, equipe_idequipe, `conta_corrente_idconta_corrente`, bairro_idbairro, data_de_ingresso, data_de_egresso, subprojeto_idsubprojeto, bolsista, id_lattes) VALUES
    (null , 'Alan Nascimento', '12365478901', 'Rua das Flores, 123', '23456789', 0, 3, 1, 2, '2022-01-15', '2023-03-20', 4, 1, '1234567890123456'),
    (null , 'Luis Henrique Magalhaes', '23458079123', 'Avenida Principal, 456', '34567890', 0, 7, 2, 1, '2021-09-20', '2023-11-21', 8, 1, '2345678901234567'),
    (null , 'Kalvin Albuquerque', '34567891234', 'Rua da Praia, 789', '45678901', 0, 11, 3, 5, '2023-03-10', '2023-09-21', 15, 1, '3456789012345678'),
    (null , 'Glenda Santana', '45678902345', 'Travessa das Arvores, 234', '56789012', 1, 2, 4, 4, '2022-05-05', null, 6, 1, '4567890123456789'),
    (null , 'Tatiana Ribeiro', '56789013456', 'Avenida das Colinas, 567', '67890123', 1, 9, 5, 3, '2021-11-30', null, 10, 1, '5678901234567890'),
    (null , 'Elias Reis', '67890124567', 'Rua dos Passaros, 890', '78901234', 1, 5, 6, 1, '2023-02-28', null, 2, 1, '6789012345678901'),
    (null , 'Filipe Neves', '78901235678', 'Avenida Central, 1234', '89012345', 1, 12, 7, 3, '2022-08-15', null, 11, 1, '7890123456789012'),
    (null , 'Ana Carolina Estrela', '89012346789', 'Rua das Montanhas, 5678', '90123456', 1, 1, 8, 4, '2023-01-10', null, 7, 1, '8901234567890123'),
    (null , 'Luiza Florentino', '90123457890', 'Travessa dos Lagos, 9012', '01234567', 1, 14, 9, 5, '2021-12-25', null, 13, 1, '9012345678901234'),
    (null , 'Gabriel Cerqueira', '12334568901', 'Avenida das Palmeiras, 12345', '12345678', 1, 10, 10, 2, '2022-07-05', null, 5, 1, '0123456789012345'),
    (null , 'Caio Melo', '23445679012', 'Rua das Pedras, 23456', '23456789', 1, 8, 11, 1, '2023-04-18', null, 12, 1, '1234567890123456'),
    (null , 'Luiz Vinicius', '34556780123', 'Avenida dos Ventos, 34567', '34567890', 1, 6, 12, 5, '2022-09-30', null, 9, 1, '2345678901234567'),
    (null , 'Rafael Argolo', '45667890134', 'Rua dos Girassois, 45678', '45678901', 1, 4, 13, 3, '2021-10-12', null, 3, 1, '3456789012345678'),
    (null , 'Jadson Nobre', '56778901245', 'Avenida dos Bosques, 56789', '56789012', 1, 13, 14, 4, '2022-11-22', null, 14, 1, '4567890123456789'),
    (null , 'Tamir', '67889012356', 'Rua das aguas, 67890', '67890123', 1, 15, 15, 2, '2023-06-08', null, 1, 1, '5678901234567890');

INSERT INTO pesquisador_has_projeto (pesquisador_idpesquisador, projeto_idprojeto) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (11, 11), 
    (12, 12), (13, 13), (14, 14), (15, 15), (16, 1), (17, 2), (18, 3), (19, 4), (20, 5), (21, 6);

INSERT INTO publicacao (idpublicacao, título, abstract, link_doi) VALUES
    (null, 'Sequenciamento de Regiões Genômicas Específicas', 'Sequenciamento do genoma humano para avanços na medicina', 'https://doi.org/sequenciamento-regioes-genomicas'),
    (null, 'Desenvolvimento de Algoritmos de Aprendizado Profundo', 'Criaçao de algoritmos inovadores para soluções em IA', 'https://doi.org/desenvolvimento-algoritmos-ia'),
    (null, 'Estudo de Viabilidade de Energia Geotérmica', 'Estudo de fontes de energia sustentaveis e tecnologias limpas', 'https://doi.org/estudo-viabilidade-energia-geotermica'),
    (null, 'Monitoramento de Espécies Ameaçadas', 'Projetos para a preservaçao de ecossistemas e biodiversidade', 'https://doi.org/monitoramento-especies-ameacadas'),
    (null, 'Desenvolvimento de Nanomateriais para Medicina', 'Desenvolvimento de materiais e dispositivos nanoestruturados', 'https://doi.org/desenvolvimento-nanomateriais-medicina'),
    (null, 'Analise de Dados de Ondas Gravitacionais', 'Estudo do universo, galaxias e fenômenos cósmicos', 'https://doi.org/analise-dados-ondas-gravitacionais'),
    (null, 'Mapeamento Neural de Processos de Decisao', 'Pesquisa em processos mentais, memória e tomada de decisao', 'https://doi.org/mapeamento-neural-processos-decisao'),
    (null, 'Desenvolvimento de Terapias Gênicas para Doenças Hereditarias', 'Desenvolvimento de terapias gênicas inovadoras', 'https://doi.org/desenvolvimento-terapias-genicas'),
    (null, 'Escavaçao e Analise de Sítios Arqueológicos', 'Escavações e estudo de civilizações antigas', 'https://doi.org/escavacao-analise-sitios-arqueologicos'),
    (null, 'Estudo da Neuroplasticidade em Condições Neurológicas', 'Pesquisas sobre o sistema nervoso e neuroplasticidade', 'https://doi.org/estudo-neuroplasticidade-condicoes-neurologicas'),
    (null, 'Desenvolvimento de Polímeros Inteligentes', 'Síntese de compostos orgânicos e desenvolvimento de novos materiais', 'https://doi.org/desenvolvimento-polimeros-inteligentes'),
    (null, 'Analise de Big Data para Insights Científicos', 'Analise de grandes conjuntos de dados para insights científicos', 'https://doi.org/analise-big-data-insights-cientificos'),
    (null, 'Experimentos em Física de Partículas', 'Pesquisa em partículas elementares e física de alta energia', 'https://doi.org/experimentos-fisica-particulas'),
    (null, 'Desenvolvimento de Modelos de Processamento de Linguagem', 'Estudo da linguagem natural e processamento de linguagem natural', 'https://doi.org/desenvolvimento-modelos-processamento-linguagem'),
    (null, 'Estudo de Qualidade do Solo em Diferentes Praticas Agrícolas', 'Investigaçao em propriedades do solo e praticas agrícolas sustentaveis', 'https://doi.org/estudo-qualidade-solo-praticas-agricolas');

INSERT INTO aluno_has_publicacao (aluno_idaluno, publicacao_idpublicacao) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15);

INSERT INTO publicacao_has_pesquisador (publicacao_idpublicacao, pesquisador_idpesquisador) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (1, 16), (2, 17), (3, 18), (4, 19), (5, 20), (6, 21);

INSERT INTO equipe_has_pesquisador (equipe_idequipe, pesquisador_idpesquisador) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (1, 16), (2, 17), (3, 18), (4, 19), (5, 20), (6, 21);

INSERT INTO nota_fiscal (numero, data_da_emissao, tipo, emitente, impostos, valor_total, status, observacoes) VALUES
    ('NF643464', '2023-01-15', 'Serviço e Equipamento', 'Genetix', 1500.00, 7500.00, 'Nao pago', 'Serviço de sequenciamento genético'),
    ('NF735342', '2023-02-20', 'Serviço e Equipamento', 'CogWorks Consultoria', 2000.00, 10000.00, 'Pago', 'Consultoria em IA'),
    ('NF345758', '2023-03-10', 'Serviço e Equipamento', 'GreenEco Solutions', 1800.00, 9000.00, 'Pago', 'Consultoria em energia renovavel'),
    ('NF905674', '2023-04-05', 'Serviço e Equipamento', 'BioDive Research', 2100.00, 10500.00, 'Nao pago', 'Estudo de ecossistemas marinhos'),
    ('NF586780', '2023-05-12', 'Serviço e Equipamento', 'NanoLab Solutions', 2200.00, 11000.00, 'Pago', 'Analise de nanomateriais'),
    ('NF154666', '2023-06-20', 'Serviço e Equipamento', 'AstroTech Observatories', 2300.00, 11500.00, 'Pago', 'Observações astronômicas'),
    ('NF789435', '2023-07-01', 'Serviço e Equipamento', 'NeuroMind Diagnósticos', 2400.00, 12000.00, 'Pago', 'Avaliaçao neuropsicológica'),
    ('NF344234', '2023-08-18', 'Serviço e Equipamento', 'GeneCare Therapeutics', 2500.00, 12500.00, 'Pago', 'Terapia gênica'),
    ('NF901234', '2023-09-22', 'Serviço e Equipamento', 'ArchaeoDig Excavations', 2600.00, 13000.00, 'Pago', 'Escavações arqueológicas'),
    ('NF567890', '2023-10-05', 'Serviço e Equipamento', 'NeuroRehab Solutions', 2700.00, 13500.00, 'Nao pago', 'Reabilitaçao neurológica avançada'),
    ('NF724326', '2023-11-10', 'Serviço e Equipamento', 'ChemLab Synthesis', 2800.00, 14000.00, 'Pago', 'Síntese de compostos orgânicos'),
    ('NF789532', '2023-12-15', 'Serviço e Equipamento', 'DataScience Insights', 2900.00, 14500.00, 'Pago', 'Analise de big data científico'),
    ('NF344438', '2024-01-02', 'Serviço e Equipamento', 'Particle Labs', 3000.00, 15000.00, 'Pago', 'Experimentos em física de partículas'),
    ('NF901324', '2024-02-20', 'Serviço e Equipamento', 'VoiceTech Solutions', 3100.00, 15500.00, 'Pago', 'Reconhecimento de voz'),
    ('NF567430', '2024-03-12', 'Serviço e Equipamento', 'AgroTech Labs', 3200.00, 16000.00, 'Nao pago', 'Analise de qualidade do solo');

INSERT INTO despesa (equipe_idequipe, nota_fiscal_idnota_fiscal, descricao, observacoes, data) VALUES
    (1, 1, 'Sequenciamento genético avançado', null, '2023-01-15'),
    (2, 2, 'Consultoria em algoritmos de IA', null, '2023-02-20'),
    (3, 3, 'Consultoria em energia renovavel', null, '2023-03-10'),
    (4, 4, 'Estudo de ecossistemas marinhos', null, '2023-04-05'),
    (5, 5, 'Analise de nanomateriais', null, '2023-05-12'),
    (6, 6, 'observações astronômicas', null, '2023-06-20'),
    (7, 7, 'Avaliaçao neuropsicológica', null, '2023-07-01'),
    (8, 8, 'Terapia gênica', null, '2023-08-18'),
    (9, 9, 'Escavações arqueológicas', null, '2023-09-22'),
    (10, 10, 'Reabilitaçao neurológica avançada', null, '2023-10-05'),
    (11, 11, 'Síntese de compostos orgânicos', null, '2023-11-10'),
    (12, 12, 'Analise de big data científico', null, '2023-12-15'),
    (13, 13, 'Experimentos em física de partículas', null, '2024-01-02'),
    (14, 14, 'Reconhecimento de voz', null, '2024-02-20'),
    (15, 15, 'Analise de qualidade do solo', null, '2024-03-12');


INSERT INTO equipamento (equipe_idequipe, nome, observacao, despesa_iddespesa) VALUES
    (1, 'Sequenciador de DNA', null, 1),
    (2, 'Supercomputador', null, 2),
    (3, 'Notebook', null, 3),
    (4, 'Extintor', null, 4),
    (5, 'Microscópio', null, 5),
    (6, 'Telescópio', null, 6),
    (7, 'Maquina de Radiografia', null, 7),
    (8, 'Estufa', null, 8),
    (9, 'Câmera', null, 9),
    (10, 'Monitor', null, 10),
    (11, 'Destilador', null, 11),
    (12, 'Servidor', null, 12),
    (13, 'Multímetro', null, 13),
    (14, 'Microfone', null, 14),
    (15, 'Sensor de Qualidade do Solo', null, 15);

INSERT INTO servico (despesa_iddespesa, nome, observacao, fornecedor, descricao) VALUES
    (1, 'Sequenciamento Genético Avançado', null, 'Genetix Inc.', 'Serviço de sequenciamento genético avançado'),
    (2, 'Consultoria em Algoritmos de IA', null, 'CogWorks Consultoria', 'Consultoria especializada em algoritmos de inteligência artificial'),
    (3, 'Consultoria em Energia Renovavel', null, 'GreenEco Solutions', 'Consultoria para implementaçao de tecnologias de energia sustentavel'),
    (4, 'Estudo de Ecossistemas Marinhos', null, 'BioDive Research', 'Pesquisa em ecossistemas marinhos'),
    (5, 'Analise de Nanomateriais', null, 'NanoLab Solutions', 'Analise de propriedades de nanomateriais'),
    (6, 'Observações Astronômicas', null, 'AstroTech Observatories', 'Serviço de observaçao astronômica'),
    (7, 'Avaliaçao Neuropsicológica', null, 'NeuroMind Diagnósticos', 'Serviços de avaliaçao neuropsicológica'),
    (8, 'Terapia Gênica', null, 'GeneCare Therapeutics', 'Serviço de terapia gênica'),
    (9, 'Escavações Arqueológicas', null, 'ArchaeoDig Excavations', 'Serviço de escavações arqueológicas'),
    (10, 'Reabilitaçao Neurológica Avançada', null, 'NeuroRehab Solutions', 'Serviço de reabilitaçao neurológica'),
    (11, 'Síntese de Compostos Orgânicos', null, 'ChemLab Synthesis', 'Serviço de síntese de compostos orgânicos'),
    (12, 'Analise de Big Data Científico', null, 'DataScience Insights', 'Serviço de analise de big data científico'),
    (13, 'Experimentos em Física de Partículas', null, 'Particle Labs Inc.', 'Serviço de experimentos em física de partículas'),
    (14, 'Reconhecimento de Voz', null, 'VoiceTech Solutions', 'Serviço de reconhecimento de voz avançado'),
    (15, 'Analise de Qualidade do Solo', null, 'AgroTech Labs', 'Serviço de analise de qualidade do solo');

INSERT INTO investidor (nome, cnpj, proposta) VALUES
    ('Google', '12345678901234', 'Investimento em pesquisas relacionadas à genética e biologia molecular'),
    ('Meta', '98765432109876', 'Apoio financeiro para desenvolvimento de algoritmos avançados em IA'),
    ('Microsoft', '45678901234567', 'Investimento em soluções de energia limpa e tecnologias sustentaveis'),
    ('McDonalds', '78901234567890', 'Apoio a estudos e projetos voltados para conservaçao da biodiversidade'),
    ('P&G', '23456789012345', 'Financiamento em pesquisa de materiais nanoestruturados'),
    ('Nasa', '89012345678901', 'Investimento em estudos e exploraçao do universo e fenômenos cósmicos'),
    ('Neuralink', '56789012345678', 'Apoio financeiro para pesquisas em processos mentais e neurologia'),
    ('Tesla', '90123456789012', 'Investimento em pesquisas de terapias genéticas inovadoras'),
    ('Ancestry', '34567890123456', 'Apoio a escavações e estudos de civilizações antigas'),
    ('Nestle', '67890123456789', 'Investimento em pesquisas de reabilitaçao neurológica'),
    ('Coca-Cola', '01234567890123', 'Financiamento em síntese de compostos orgânicos e novos materiais'),
    ('Lenovo', '78901234567890', 'Apoio em analise de dados e insights científicos'),
    ('Ferrari', '34567890123456', 'Investimento em pesquisas de partículas elementares e física de alta energia'),
    ('SpaceX', '01234567890123', 'Apoio financeiro para desenvolvimento de reconhecimento de voz'),
    ('Pepsi', '90123456789012', 'Financiamento em pesquisas sobre propriedades do solo e sustentabilidade agrícola');

INSERT INTO equipe_has_investidor (equipe_idequipe, investidor_idinvestidor) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15);
