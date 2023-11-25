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

INSERT INTO equipe (id, nome_da_equipe, descricao, observacoes) VALUES
    (null, 'Moléculas Inovadoras', 'Pesquisa em genética e biologia molecular para avanços na medicina', 'Equipe altamente especializada em técnicas de sequenciamento de DNA'),
    (null, 'AlgCog', 'Desenvolvimento de algoritmos avançados para soluções em IA', 'Colaborações com instituições acadêmicas e empresas de tecnologia'),
    (null, 'GreenEnergy', 'Pesquisa em fontes de energia sustentáveis e tecnologias limpas', 'Projetos em parceria com indústrias de energia renovável'),
    (null, 'EcossisGuard', 'Estudo de ecossistemas e conservação da biodiversidade', 'Participação ativa em projetos de preservação ambiental'),
    (null, 'NanoInova', 'Pesquisa em materiais e dispositivos nanoestruturados', 'Publicações em revistas científicas de renome na área'),
    (null, 'AstroFusion', 'Estudo do universo, galáxias e fenômenos cósmicos', 'Participação em observatórios internacionais'),
    (null, 'CogNitro', 'Pesquisa em processos mentais, memória e tomada de decisão', 'Colaborações com clínicas de neurologia'),
    (null, 'EngeneX', 'Manipulação genética para aplicações médicas e agrícolas', 'Desenvolvimento de terapias gênicas inovadoras'),
    (null, 'ArqueoTech', 'Escavações e estudo de civilizações antigas', 'Descobertas arqueológicas em sítios históricos importantes'),
    (null, 'NeuroDynamics', 'Estudo do sistema nervoso e neuroplasticidade', 'Pesquisas com potencial aplicação em reabilitação neurológica'),
    (null, 'QuímicaInova', 'Síntese de compostos orgânicos e desenvolvimento de novos materiais', 'Publicações em revistas especializadas em química'),
    (null, 'DataInsight Labs', 'Análise de grandes conjuntos de dados para insights científicos', 'Colaborações com empresas para aplicação prática de descobertas'),
    (null, 'PartículasInov', 'Pesquisa em partículas elementares e física de alta energia', 'Participação em experimentos em aceleradores de partículas'),
    (null, 'LinguaTech', 'Estudo da linguagem natural e processamento de linguagem natural', 'Desenvolvimento de algoritmos para reconhecimento de voz'),
    (null, 'SoloTech', 'Investigação em propriedades do solo e sustentabilidade agrícola', 'Projetos em parceria com fazendas e instituições agrícolas');

INSERT INTO relatorio_tecnico (idrelatorio_tecnico, titulo, resumo, relatorio, equipe_idequipe) VALUES
    (null, 'Avanços na Genética Molecular', 'Estudo sobre as últimas descobertas em genética molecular', 'O relatório aborda avanços significativos nas pesquisas relacionadas à genética molecular, destacando descobertas e técnicas inovadoras.', 1),
    (null, 'Algoritmos Avançados em IA', 'Desenvolvimento e aplicação de algoritmos para soluções em IA', 'Este relatório técnico destaca o desenvolvimento de algoritmos avançados e sua aplicação em soluções práticas de inteligência artificial.', 2),
    (null, 'Sustentabilidade em Energias Renováveis', 'Pesquisa sobre fontes de energia sustentáveis', 'O relatório aborda os projetos de pesquisa em fontes de energia sustentáveis, com ênfase em colaborações com indústrias de energia renovável.', 3),
    (null, 'Conservação da Biodiversidade', 'Estudo de ecossistemas para a preservação ambiental', 'Este relatório destaca a participação ativa da equipe em projetos de conservação da biodiversidade e preservação ambiental.', 4),
    (null, 'Inovações em Nanotecnologia', 'Pesquisa em materiais nanoestruturados', 'O relatório destaca as pesquisas recentes em materiais nanoestruturados, incluindo publicações em revistas científicas de renome na área.', 5),
    (null, 'Explorações Astrofísicas', 'Estudo do universo e fenômenos cósmicos', 'Este relatório aborda as contribuições da equipe nas explorações astrofísicas, incluindo participação em observatórios internacionais.', 6),
    (null, 'Processos Mentais e Tomada de Decisão', 'Pesquisa em psicologia cognitiva', 'O relatório destaca as pesquisas em processos mentais, memória e tomada de decisão, com colaborações importantes com clínicas de neurologia.', 7),
    (null, 'Manipulação Genética Avançada', 'Pesquisa em manipulação genética para aplicações médicas e agrícolas', 'Este relatório técnico destaca o desenvolvimento de terapias gênicas inovadoras e aplicações em medicina e agricultura.', 8),
    (null, 'Arqueologia e Descobertas Antigas', 'Escavações e estudo de civilizações antigas', 'O relatório destaca as escavações e descobertas arqueológicas da equipe em sítios históricos importantes.', 9),
    (null, 'Neurociência e Neuroplasticidade', 'Estudo do sistema nervoso e plasticidade cerebral', 'Este relatório técnico destaca as pesquisas em neurociência, com potencial aplicação em reabilitação neurológica e cuidados de saúde.', 10),
    (null, 'Inovações em Química Orgânica', 'Síntese de compostos orgânicos e desenvolvimento de materiais', 'O relatório aborda a síntese de compostos orgânicos e o desenvolvimento de novos materiais, com publicações em revistas especializadas.', 11),
    (null, 'Análise Avançada de Dados', 'Utilização de grandes conjuntos de dados para insights científicos', 'Este relatório destaca a análise de grandes conjuntos de dados para obter insights científicos, com colaborações com empresas para aplicação prática.', 12),
    (null, 'Física de Partículas e Experimentos', 'Pesquisa em partículas elementares e física de alta energia', 'O relatório aborda as pesquisas em física de partículas, incluindo a participação em experimentos em aceleradores de partículas.', 13),
    (null, 'Linguística Computacional e Reconhecimento de Voz', 'Estudo da linguagem natural e desenvolvimento de algoritmos', 'Este relatório técnico destaca os estudos em linguística computacional, incluindo o desenvolvimento de algoritmos para reconhecimento de voz.', 14),
    (null, 'Ciências do Solo e Sustentabilidade Agrícola', 'Investigação em propriedades do solo e práticas agrícolas sustentáveis', 'O relatório aborda as pesquisas em ciências do solo e projetos em parceria com fazendas para promover a sustentabilidade agrícola.', 15);

INSERT INTO pesquisador (idpesquisador, bairro_idbairro, nome, endereco, cep, cpf, data_de_ingresso, data_de_egresso, ativo, area_de_atuacao, id_lattes) VALUES
    (null, 1, 'Josemar Rodrigues Souza', 'Rua A, 123', '35500221', '13043382072', '2005-05-01', null, 1, 'Genética Molecular', '5463076295727564'),
    (null, 2, 'Marco Antônio Costa Simões', 'Rua B, 456', '23456789', '23456789012', '2007-02-32', null, 1, 'IA e Algoritmos', '0319800678858096'),
    (null, 3, 'Ana Patrícia Magalhães', 'Rua C, 789', '34567890', '34567890123', '2011-5-11', null, 1, 'Energias Renováveis', '9035802389892301'),
    (null, 4, 'Robson Marinho', 'Rua D, 012', '45678901', '45678901234', '2010-05-02', null, 1, 'Conservação Ambiental', '3307568955007464'),
    (null, 5, 'Jorge Campos', 'Rua E, 345', '56789012', '56789012345', '2007-11-02', null, 1, 'Nanotecnologia', '4851786390961391'),
    (null, 6, 'Daniela Barreto', 'Rua F, 678', '67890123', '67890123456', '2002-12-24', null, 1, 'Astrofísica', '1442102224330280'),
    (null, 7, 'Leandro Santos Coelho', 'Rua G, 901', '78901234', '78901234567', '2013-09-05', null, 1, 'Neurociência', '1474574195753600'),
    (null, 8, 'Ernesto Massa', 'Rua H, 234', '89012345', '89012345678', '2020-09-03', null, 1, 'Genética Aplicada', '1849818303242939'),
    (null, 9, 'Diego Suarez', 'Rua I, 567', '90123456', '90123456789', '2007-08-15', "2022-02-01", 0, 'Arqueologia', '1377022547816780'),
    (null, 10, 'Carlos Helano', 'Rua J, 890', '01234567', '01234567890', '2012-12-01', null, 1, 'Neuroplasticidade', '1946944212498166'),
    (null, 11, 'Alexandre Rafael Lenz', 'Rua K, 123', '12345678', '12345678901', '2012-02-24', null, 1, 'Química Orgânica', '9063268848566672'),
    (null, 12, 'Cláudio Alves de Amorim', 'Rua L, 456', '23456789', '23456789012', '2003-05-20', null, 1, 'Ciência de Dados', '4976012823452609'),
    (null, 13, 'Antônio Carlos Fontes Atta', 'Rua M, 789', '34567890', '34567890123', '2015-05-03', null, 1, 'Física de Partículas', '3591777818200356'),
    (null, 14, 'Maria Inês Valderrama Restovic', 'Rua N, 012', '45678901', '45678901234', '2009-02-30', null, 1, 'Linguística Computacional', '3352656018233063'),
    (null, 15, 'Gerusa Soares Pinheiro', 'Rua O, 345', '56789012', '56789012345', '2002-08-26', null, 1, 'Agronomia', '0699272930614987');
    (null, 16, 'Juliana Santos Pereira', 'Rua P, 678', '67890123', '67890123456', '2010-11-15', null, 1, 'Genética Molecular', '7654321098765432'),
    (null, 17, 'Ricardo Almeida Costa', 'Rua Q, 901', '78901234', '78901234567', '2008-02-12', null, 1, 'IA e Algoritmos', '8901234567890123'),
    (null, 18, 'Mariana Viana', 'Rua R, 234', '89012345', '89012345678', '2012-5-01', null, 1, 'Energias Renováveis', '9012345678901234'),
    (null, 19, 'Fernando Ferreira Lima', 'Rua S, 567', '90123456', '90123456789', '2005-07-02', "2023-02-01", 0, 'Conservação Ambiental', '1234567890123456'),
    (null, 20, 'Luciana Campos', 'Rua T, 890', '01234567', '01234567890', '2011-11-15', '2015-06-11', 0, 'Nanotecnologia', '2345678901234567'),
    (null, 21, 'Gabriel Barreto', 'Rua U, 123', '12345678', '12345678901', '2003-12-24', '2009-03-21', 0, 'Astrofísica', '3456789012345678');

INSERT INTO projeto (idprojeto, equipe_idequipe, título, descrição, aprovado) VALUES
    (null, 1, 'Projeto Genoma Humano', 'Sequenciamento do genoma humano para avanços na medicina', 1),
    (null, 2, 'Desenvolvimento de Algoritmos Avançados', 'Criação de algoritmos inovadores para soluções em IA', 1),
    (null, 3, 'Pesquisa em Energias Renováveis', 'Estudo de fontes de energia sustentáveis e tecnologias limpas', 1),
    (null, 4, 'Conservação da Biodiversidade', 'Projetos para a preservação de ecossistemas e biodiversidade', 1),
    (null, 5, 'Pesquisa em Nanotecnologia', 'Desenvolvimento de materiais e dispositivos nanoestruturados', 1),
    (null, 6, 'Exploração Astrofísica', 'Estudo do universo, galáxias e fenômenos cósmicos', 1),
    (null, 7, 'CogNitro: Avanços em Neurociência', 'Pesquisa em processos mentais, memória e tomada de decisão', 0),
    (null, 8, 'EngeneX: Manipulação Genética', 'Desenvolvimento de terapias gênicas inovadoras', 1),
    (null, 9, 'ArqueoTech: Descobertas Antigas', 'Escavações e estudo de civilizações antigas', 0),
    (null, 10, 'NeuroDynamics: Estudo do Sistema Nervoso', 'Pesquisas sobre o sistema nervoso e neuroplasticidade', 1),
    (null, 11, 'QuímicaInova: Desenvolvimento de Materiais', 'Síntese de compostos orgânicos e desenvolvimento de novos materiais', 1),
    (null, 12, 'DataInsight Labs: Análise de Dados', 'Análise de grandes conjuntos de dados para insights científicos', 1),
    (null, 13, 'PartículasInov: Física de Partículas', 'Pesquisa em partículas elementares e física de alta energia', 1),
    (null, 14, 'LinguaTech: Processamento de Linguagem Natural', 'Estudo da linguagem natural e processamento de linguagem natural', 0),
    (null, 15, 'SoloTech: Sustentabilidade Agrícola', 'Investigação em propriedades do solo e práticas agrícolas sustentáveis', 0);

INSERT INTO subprojeto (projeto_idprojeto, título, justificativa, objetivo, metodologia, referencias) VALUES
    (1, 'Sequenciamento de Regiões Genômicas Específicas', 'Identificar regiões genômicas de interesse para tratamentos médicos específicos.', 'Realizar o sequenciamento detalhado de regiões genômicas específicas para avançar em tratamentos médicos.', 'Sequenciamento de última geração e análise bioinformática avançada.', 'Watson, J. et al. (2021). Avanços no sequenciamento genômico.'),
    (2, 'Desenvolvimento de Algoritmos de Aprendizado Profundo', 'Necessidade de algoritmos mais eficientes e precisos para aplicações de IA.', 'Criar algoritmos avançados de aprendizado profundo para melhorar o desempenho em várias áreas.', 'Desenvolvimento e treinamento de redes neurais profundas.', 'LeCun, Y. et al. (2015). Deep learning.'),
    (3, 'Estudo de Viabilidade de Energia Geotérmica', 'Investigar o potencial da energia geotérmica como fonte sustentável.', 'Avaliar a viabilidade técnica e econômica da energia geotérmica.', 'Modelagem geotérmica e análise de custo-benefício.', 'Smith, A. (2022). Energia geotérmica sustentável.'),
    (4, 'Monitoramento de Espécies Ameaçadas', 'Preservação da biodiversidade e prevenção da extinção de espécies.', 'Monitorar espécies ameaçadas e seus habitats para estratégias de conservação.', 'Uso de tecnologias de rastreamento e análise de padrões de migração.', 'Garcia, C. et al. (2019). Conservação de espécies.'),
    (5, 'Desenvolvimento de Nanomateriais para Medicina', 'Explorar o potencial de nanomateriais para aplicações médicas.', 'Criar nanomateriais para diagnóstico e tratamentos médicos avançados.', 'Síntese de nanomateriais e testes em modelos biológicos.', 'Taylor, R. et al. (2022). Nanotecnologia médica.'),
    (6, 'Análise de Dados de Ondas Gravitacionais', 'Estudo das ondas gravitacionais e eventos cósmicos de alta energia.', 'Analisar dados de telescópios para identificar e compreender eventos astrofísicos.', 'Análise estatística avançada e modelagem de dados.', 'Abbott, B. et al. (2016). Ondas gravitacionais.'),
    (7, 'Mapeamento Neural de Processos de Decisão', 'Compreender os processos neurais por trás da tomada de decisão.', 'Mapear as áreas do cérebro envolvidas em processos de tomada de decisão.', 'Neuroimagem e análise estatística de dados neurais.', 'Cohen, J. et al. (2018). Neurociência e tomada de decisão.'),
    (8, 'Desenvolvimento de Terapias Gênicas para Doenças Hereditárias', 'Criar tratamentos gênicos para doenças genéticas hereditárias.', 'Desenvolver terapias precisas para corrigir mutações genéticas específicas.', 'Edição genômica e testes em modelos celulares.', 'Wilson, J. et al. (2019). Terapias gênicas.');
    (9, 'Escavação e Análise de Sítios Arqueológicos', 'Estudar sítios arqueológicos para compreender civilizações antigas.', 'Realizar escavações e análises detalhadas de artefatos antigos.', 'Métodos de escavação arqueológica e análise laboratorial.', 'Johnson, M. et al. (2018). Arqueologia de civilizações antigas.'),
    (10, 'Estudo da Neuroplasticidade em Condições Neurológicas', 'Investigar a capacidade do sistema nervoso de se adaptar em condições neurológicas.', 'Compreender como a neuroplasticidade pode ser influenciada por diferentes condições.', 'Testes neuropsicológicos e neuroimagem funcional.', 'Smith, A. et al. (2020). Neuroplasticidade em condições neurológicas.'),
    (11, 'Desenvolvimento de Polímeros Inteligentes', 'Criar polímeros com propriedades avançadas para diversas aplicações.', 'Desenvolver materiais poliméricos inteligentes para várias indústrias.', 'Síntese química e caracterização de polímeros.', 'Brown, B. et al. (2019). Polímeros avançados.'),
    (12, 'Análise de Big Data para Insights Científicos', 'Explorar grandes conjuntos de dados para descobertas científicas.', 'Analisar dados de várias fontes para insights científicos significativos.', 'Processamento de big data e algoritmos de análise.', 'Clark, C. et al. (2021). Análise de big data.'),
    (13, 'Experimentos em Física de Partículas', 'Conduzir experimentos para compreender as propriedades de partículas elementares.', 'Realizar experimentos em laboratório para estudar partículas subatômicas.', 'Aceleradores de partículas e detecção de alta energia.', 'Gates, S. et al. (2017). Física de partículas elementares.'),
    (14, 'Desenvolvimento de Modelos de Processamento de Linguagem', 'Construir modelos avançados para compreensão e geração de linguagem natural.', 'Desenvolver modelos de processamento de linguagem natural mais eficazes.', 'Aprendizado de máquina e redes neurais para processamento de texto.', 'Miller, D. et al. (2022). Processamento de linguagem natural.'),
    (15, 'Estudo de Qualidade do Solo em Diferentes Práticas Agrícolas', 'Analisar a qualidade do solo em métodos agrícolas sustentáveis.', 'Avaliar o impacto de diferentes práticas agrícolas na saúde do solo.', 'Análise química e biológica do solo em diferentes condições.', 'Harris, E. et al. (2020). Qualidade do solo e práticas agrícolas sustentáveis.');

INSERT INTO aluno (matricula, nome, cpf, endereco, cep, ativo, equipe_idliga, `conta corrente_idconta corrente`, bairro_idbairro, data_de_ingresso, data_de_egresso, subprojeto_idsubprojeto, bolsista, id_lattes) VALUES
    (87654321, 'Ana Silva', '12365478901', 'Rua das Flores, 123', '23456789', 0, 3, NULL, 2, '2022-01-15', '2023-03-20', 4, 1, '1234567890123456'),
    (98765432, 'Carlos Oliveira', '23458079123', 'Avenida Principal, 456', '34567890', 0, 7, NULL, 1, '2021-09-20', '2023-11-21', 8, 0, '2345678901234567'),
    (76543219, 'Julia Santos', '34567891234', 'Rua da Praia, 789', '45678901', 0, 11, NULL, 5, '2023-03-10', '2023-09-21', 15, 1, '3456789012345678'),
    (65432198, 'Rafael Souza', '45678902345', 'Travessa das Árvores, 234', '56789012', 1, 2, NULL, 4, '2022-05-05', NULL, 6, 0, '4567890123456789'),
    (54321987, 'Mariana Costa', '56789013456', 'Avenida das Colinas, 567', '67890123', 1, 9, NULL, 3, '2021-11-30', NULL, 10, 1, '5678901234567890'),
    (43219876, 'Lucas Ferreira', '67890124567', 'Rua dos Pássaros, 890', '78901234', 1, 5, NULL, 1, '2023-02-28', NULL, 2, 0, '6789012345678901'),
    (32198765, 'Beatriz Oliveira', '78901235678', 'Avenida Central, 1234', '89012345', 1, 12, NULL, 3, '2022-08-15', NULL, 11, 1, '7890123456789012'),
    (21987654, 'Pedro Almeida', '89012346789', 'Rua das Montanhas, 5678', '90123456', 1, 1, NULL, 4, '2023-01-10', NULL, 7, 0, '8901234567890123'),
    (19876543, 'Sophia Lima', '90123457890', 'Travessa dos Lagos, 9012', '01234567', 1, 14, NULL, 5, '2021-12-25', NULL, 13, 1, '9012345678901234'),
    (87654329, 'Gabriel Silva', '12334568901', 'Avenida das Palmeiras, 12345', '12345678', 1, 10, NULL, 2, '2022-07-05', NULL, 5, 0, '0123456789012345'),
    (98765439, 'Laura Santos', '23445679012', 'Rua das Pedras, 23456', '23456789', 1, 8, NULL, 1, '2023-04-18', NULL, 12, 1, '1234567890123456'),
    (76543209, 'Matheus Rodrigues', '34556780123', 'Avenida dos Ventos, 34567', '34567890', 1, 6, NULL, 5, '2022-09-30', NULL, 9, 0, '2345678901234567'),
    (65432189, 'Clara Pereira', '45667890134', 'Rua dos Girassóis, 45678', '45678901', 1, 4, NULL, 3, '2021-10-12', NULL, 3, 1, '3456789012345678'),
    (54321978, 'Enzo Carvalho', '56778901245', 'Avenida dos Bosques, 56789', '56789012', 1, 13, NULL, 4, '2022-11-22', NULL, 14, 0, '4567890123456789'),
    (43219876, 'Isabela Fernandes', '67889012356', 'Rua das Águas, 67890', '67890123', 1, 15, NULL, 2, '2023-06-08', NULL, 1, 1, '5678901234567890');

INSERT INTO pesquisador_has_projeto (pesquisador_idpesquisador, projeto_idprojeto) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (11, 11), 
    (12, 12), (13, 13), (14, 14), (15, 15), (16, 1), (17, 2), (18, 3), (19, 4), (20, 5), (21, 6);

INSERT INTO publicacao (idpublicacao, título, abstract, link_doi) VALUES
    (null, 'Sequenciamento de Regiões Genômicas Específicas', 'Sequenciamento do genoma humano para avanços na medicina', 'https://doi.org/sequenciamento-regioes-genomicas'),
    (null, 'Desenvolvimento de Algoritmos de Aprendizado Profundo', 'Criação de algoritmos inovadores para soluções em IA', 'https://doi.org/desenvolvimento-algoritmos-ia'),
    (null, 'Estudo de Viabilidade de Energia Geotérmica', 'Estudo de fontes de energia sustentáveis e tecnologias limpas', 'https://doi.org/estudo-viabilidade-energia-geotermica'),
    (null, 'Monitoramento de Espécies Ameaçadas', 'Projetos para a preservação de ecossistemas e biodiversidade', 'https://doi.org/monitoramento-especies-ameacadas'),
    (null, 'Desenvolvimento de Nanomateriais para Medicina', 'Desenvolvimento de materiais e dispositivos nanoestruturados', 'https://doi.org/desenvolvimento-nanomateriais-medicina'),
    (null, 'Análise de Dados de Ondas Gravitacionais', 'Estudo do universo, galáxias e fenômenos cósmicos', 'https://doi.org/analise-dados-ondas-gravitacionais'),
    (null, 'Mapeamento Neural de Processos de Decisão', 'Pesquisa em processos mentais, memória e tomada de decisão', 'https://doi.org/mapeamento-neural-processos-decisao'),
    (null, 'Desenvolvimento de Terapias Gênicas para Doenças Hereditárias', 'Desenvolvimento de terapias gênicas inovadoras', 'https://doi.org/desenvolvimento-terapias-genicas'),
    (null, 'Escavação e Análise de Sítios Arqueológicos', 'Escavações e estudo de civilizações antigas', 'https://doi.org/escavacao-analise-sitios-arqueologicos'),
    (null, 'Estudo da Neuroplasticidade em Condições Neurológicas', 'Pesquisas sobre o sistema nervoso e neuroplasticidade', 'https://doi.org/estudo-neuroplasticidade-condicoes-neurologicas'),
    (null, 'Desenvolvimento de Polímeros Inteligentes', 'Síntese de compostos orgânicos e desenvolvimento de novos materiais', 'https://doi.org/desenvolvimento-polimeros-inteligentes'),
    (null, 'Análise de Big Data para Insights Científicos', 'Análise de grandes conjuntos de dados para insights científicos', 'https://doi.org/analise-big-data-insights-cientificos'),
    (null, 'Experimentos em Física de Partículas', 'Pesquisa em partículas elementares e física de alta energia', 'https://doi.org/experimentos-fisica-particulas'),
    (null, 'Desenvolvimento de Modelos de Processamento de Linguagem', 'Estudo da linguagem natural e processamento de linguagem natural', 'https://doi.org/desenvolvimento-modelos-processamento-linguagem'),
    (null, 'Estudo de Qualidade do Solo em Diferentes Práticas Agrícolas', 'Investigação em propriedades do solo e práticas agrícolas sustentáveis', 'https://doi.org/estudo-qualidade-solo-praticas-agricolas');
    (null, 'Projeto Genoma Humano', 'Sequenciamento do genoma humano para avanços na medicina', 'https://doi.org/projeto-genoma-humano'),
    (null, 'Desenvolvimento de Algoritmos Avançados', 'Criação de algoritmos inovadores para soluções em IA', 'https://doi.org/desenvolvimento-algoritmos-avancados'),
    (null, 'Pesquisa em Energias Renováveis', 'Estudo de fontes de energia sustentáveis e tecnologias limpas', 'https://doi.org/pesquisa-energias-renovaveis'),
    (null, 'Conservação da Biodiversidade', 'Projetos para a preservação de ecossistemas e biodiversidade', 'https://doi.org/conservacao-biodiversidade'),
    (null, 'Pesquisa em Nanotecnologia', 'Desenvolvimento de materiais e dispositivos nanoestruturados', 'https://doi.org/pesquisa-nanotecnologia'),
    (null, 'Exploração Astrofísica', 'Estudo do universo, galáxias e fenômenos cósmicos', 'https://doi.org/exploracao-astrofisica'),
    (null, 'CogNitro: Avanços em Neurociência', 'Pesquisa em processos mentais, memória e tomada de decisão', 'https://doi.org/cognitro-avancos-neurociencia'),
    (null, 'EngeneX: Manipulação Genética', 'Desenvolvimento de terapias gênicas inovadoras', 'https://doi.org/engenex-manipulacao-genetica'),
    (null, 'ArqueoTech: Descobertas Antigas', 'Escavações e estudo de civilizações antigas', 'https://doi.org/arqueotech-descobertas-antigas'),
    (null, 'NeuroDynamics: Estudo do Sistema Nervoso', 'Pesquisas sobre o sistema nervoso e neuroplasticidade', 'https://doi.org/neurodynamics-estudo-sistema-nervoso'),
    (null, 'QuímicaInova: Desenvolvimento de Materiais', 'Síntese de compostos orgânicos e desenvolvimento de novos materiais', 'https://doi.org/quimicainova-desenvolvimento-materiais'),
    (null, 'DataInsight Labs: Análise de Dados', 'Análise de grandes conjuntos de dados para insights científicos', 'https://doi.org/datainsight-labs-analise-dados'),
    (null, 'PartículasInov: Física de Partículas', 'Pesquisa em partículas elementares e física de alta energia', 'https://doi.org/particulasinov-fisica-particulas'),
    (null, 'LinguaTech: Processamento de Linguagem Natural', 'Estudo da linguagem natural e processamento de linguagem natural', 'https://doi.org/linguatech-processamento-linguagem-natural'),
    (null, 'SoloTech: Sustentabilidade Agrícola', 'Investigação em propriedades do solo e práticas agrícolas sustentáveis', 'https://doi.org/solotech-sustentabilidade-agricola');

INSERT INTO aluno_has_publicacao (aluno_idaluno, publicacao_idpublicacao) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15);

INSERT INTO publicacao_has_pesquisador (publicacao_idpublicacao, pesquisador_idpesquisador) VALUES
    (16, 1), (17, 2), (18, 3), (19, 4), (20, 5), (21, 6), (22, 7), (23, 8), (24, 9), (25, 10),
    (26, 11), (27, 12), (28, 13), (29, 14), (30, 15);

INSERT INTO equipe_has_pesquisador (equipe_idliga, pesquisador_idpesquisador) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (1, 16), (2, 17), (3, 18), (4, 19), (5, 20), (6, 21);

INSERT INTO nota_fiscal (numero, data_da_emissao, tipo, emitente, impostos, valor_total, status, observacoes) VALUES
    ('987654321', '2023-10-15', 'Serviço', 'LabInnovate Solutions', 450.0, 2500.0, 'Pago', 'Sequenciamento completo de DNA'),
    ('789456123', '2023-09-20', 'Serviço', 'ScientiTech Services', 320.0, 1800.0, 'Pago', 'Desenvolvimento de algoritmos de aprendizado de máquina'),
    ('654789321', '2023-08-18', 'Serviço', 'BioGenius Solutions', 550.0, 3000.0, 'Pendente', 'Estudo de nanomateriais para medicina'),
    ('987123654', '2023-07-25', 'Serviço', 'NanoVision Experts', 400.0, 2200.0, 'Processando', 'Análise de big data para insights científicos'),
    ('456789987', '2023-06-30', 'Serviço', 'DataMinds Corporation', 480.0, 2700.0, 'Pago', 'Estudo de neuroplasticidade em condições neurológicas'),
    ('321987654', '2023-05-18', 'Serviço', 'ResearchCrafters Ltd.', 600.0, 3500.0, 'Aguardando', 'Pesquisa em terapias gênicas para doenças hereditárias'),
    ('987654123', '2023-04-12', 'Equipamento', 'NeuroNexa Innovations', 520.0, 2900.0, 'Pago', 'Equipamentos para coleta de dados de ondas gravitacionais'),
    ('654789321', '2023-03-20', 'Equipamento', 'GenoQuest Services', 420.0, 2400.0, 'Pendente', 'Equipamentos para estudo de energia geotérmica para fontes sustentáveis'),
    ('123987654', '2023-02-28', 'Equipamento', 'TechExplora Enterprises', 380.0, 2100.0, 'Pago', 'Equipamentos para monitoramento de espécies ameaçadas e seus habitats'),
    ('987321654', '2023-01-10', 'Equipamento', 'AstroAnalytics Solutions', 500.0, 2800.0, 'Processando', 'Equipamentos para mapeamento neural de processos de decisão'),
    ('321654987', '2022-12-20', 'Equipamento', 'EcoSustain Consultants', 430.0, 2500.0, 'Pago', 'Equipamentos para a análise de viabilidade de energia geotérmica'),
    ('654987321', '2022-11-18', 'Equipamento', 'LabScape Innovations', 410.0, 2300.0, 'Aguardando', 'Equipamentos para realizar experimentos em física de partículas'),
    ('789654123', '2022-10-30', 'Outro', 'HigienizaMaster', 470.0, 2600.0, 'Pago', 'Limpeza dos laboratórios'),
    ('456321789', '2022-09-28', 'Outro', 'RenovaWorks Ltd.', 440.0, 2450.0, 'Processando', 'Aumento da sala de testes'),
    ('123456789', '2022-08-15', 'Outro', 'CleanPro', 490.0, 2700.0, 'Pago', 'Coleta de lixo');

INSERT INTO despesa (equipe_idliga, nota_fiscal_idnota_fiscal, descricao, observacoes, data) VALUES
    (1, 1, 'Reagentes para experimentos de DNA', 'Recebimento de dados de reagentes específicos para testes moleculares', '2023-10-05'),
    (2, 2, 'Licença para software de IA', 'Aquisição de licença para plataforma de desenvolvimento em IA', '2023-09-10'),
    (3, 3, 'Equipamentos de captação de energia solar', 'Compra de painéis solares e acessórios para estudo', '2023-08-08'),
    (4, 4, 'Material para estudos de biodiversidade', 'Compra de equipamentos para análise de fauna e flora', '2023-07-25'),
    (5, 5, 'Nanomateriais para experimentos', 'Aquisição de nanomateriais específicos para pesquisas', '2023-06-30'),
    (6, 6, 'Telescópio para observação espacial', 'Aquisição de telescópio avançado para observações cósmicas', '2023-05-18'),
    (3, 13, 'Limpeza do laboratório', 'Laboratório estava sujo depois de alguns experimentos', '2023-04-12'),
    (1, 14, 'Expansão da sala de testes', 'Necessário para a realização de melhores testes', '2023-02-28');
    (5, 15, 'Coleta de lixo', 'Coleta semanal de lixo', '2023-03-20');

