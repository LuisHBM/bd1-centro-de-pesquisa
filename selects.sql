-- Letra b 
-- Seleciona o nome e a data de ingresso de todos os alunos que entraram no grupo de pesquisa em 2023
SELECT nome, data_de_ingresso
FROM aluno
WHERE data_de_ingresso LIKE "2023%"

-- Letra c
-- Seleciona e ordena o nome de todos os alunos em ordem alfabética
SELECT nome
FROM aluno
ORDER BY nome

-- Letra d
-- Seleciona quantas contas correntes existem para cada banco, e mostra somente os bancos que possuem mais de 3 contas
SELECT nome_do_banco, count(*) AS 'Quantidade de contas'
FROM conta_corrente
GROUP BY nome_do_banco
HAVING count(*) > 3

-- Letra e 
-- Seleciona o nome do aluno, o nome do banco, a conta corrente e o digito verificador
SELECT a.nome, c.nome_do_banco, c.conta, c.digito_verificador
FROM aluno a
JOIN conta_corrente c ON c.idconta_corrente = a.conta_corrente_idconta_corrente

-- Letra f
-- Seleciona o número (atributo) das notas fiscais pertencentes a cada equipe 
SELECT e.nome_da_equipe, nf.numero
FROM equipe e JOIN despesa d ON e.idequipe = d.equipe_idequipe
JOIN nota_fiscal nf ON d.nota_fiscal_idnota_fiscal = nf.idnota_fiscal

-- Letra g
-- Mostra as contas correntes de todos os alunos pertencentes a cada projeto de pesquisa
SELECT p.título, c.nome_do_banco, c.conta, c.digito_verificador
FROM projeto p JOIN subprojeto sp ON p.idprojeto = sp.projeto_idprojeto
JOIN aluno a ON a.subprojeto_idsubprojeto = sp.idsubprojeto
JOIN conta_corrente c ON c.idconta_corrente = a.conta_corrente_idconta_corrente

-- Letra h 
-- Mostra quantos pesquisadores orientam um aluno (de acordo seu subprojeto e projeto). Exibe somente alunos que são orientados por mais de 1 pesquisador.
SELECT a.nome, count(*)
FROM aluno a JOIN subprojeto sp ON a.subprojeto_idsubprojeto = sp.idsubprojeto
JOIN projeto pr ON pr.idprojeto = sp.projeto_idprojeto
JOIN pesquisador_has_projeto php ON php.projeto_idprojeto = pr.idprojeto
GROUP BY a.nome
HAVING count(*) > 1

-- Letra i
-- Mostra quantos alunos cada pesquisador orienta (de acordo com os projetos e subprojetos)
SELECT pe.nome, count(*)
FROM pesquisador pe JOIN pesquisador_has_projeto php ON pe.idpesquisador = php.pesquisador_idpesquisador
JOIN projeto pr ON pr.idprojeto = php.projeto_idprojeto
JOIN subprojeto sp ON sp.projeto_idprojeto = pr.idprojeto
JOIN aluno a ON a.subprojeto_idsubprojeto = sp.idsubprojeto
GROUP BY pe.nome

-- Letra j
-- Mostra quantos pesquisadores ainda ativos no centro de pesquisa cada publicação possui. Exibe somente publicações que tiverem mais de 1 pesquisador.
SELECT pu.título, count(*)
FROM publicacao pu JOIN publicacao_has_pesquisador php ON pu.idpublicacao = php.publicacao_idpublicacao
JOIN pesquisador p ON p.idpesquisador = php.pesquisador_idpesquisador
WHERE p.ativo = 1
GROUP BY pu.título
HAVING count(*) > 1
