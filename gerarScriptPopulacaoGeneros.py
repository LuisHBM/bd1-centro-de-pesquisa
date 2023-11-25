import json
import os

current_path = os.getcwd()
arquivo = open(f'{current_path}/dataset/teste.json', 'r')
lista = json.load(arquivo)

population_script = open(f'{current_path}/dataset/scriptPopulacaoGeneros.sql', 'w')

nome_tabela = "equipes"

keys = ""
values = ""

for [key, value] in lista.items():
    keys += key + ","
    values.append(value)

keys[:]

insert_base = f'''INSERT INTO Genero({keys}) 
            VALUES(
                '{values}'
            );\n'''

population_script.write(insert_base)


