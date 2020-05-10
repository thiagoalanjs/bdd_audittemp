#language: pt
@editar_datalogger
Funcionalidade: Editar dataloggers

Esquema do Cenario: Preencher nome incorreto
    Dado que estou na tela de edição de dados do datalogger
    Quando edito o campo nome com o dado "<campo_nome>"
    Então a mensagem "<mensagem_alert>" é exibida 

    Exemplos:
        |campo_nome                          |mensagem_alert                                    |
        | Th                                 |Campo deve ter no mínimo 3 e máximo 30 caracteres |
        | Juan Manoel Fangio Soares Neto Jr  |Campo deve ter no mínimo 3 e máximo 30 caracteres |

Esquema do Cenario: Preencher os campos de temperaturas com dados incorretos
    Dado que estou na tela de edição de dados do datalogger
    Quando edito o campos de temperaturas minima e máxima com o dados "<campo_temp_min>" e "<campo_temp_max>" 
    Então a mensagem "<mensagem_alert>" é exibida 

    Exemplos:
        |campo_temp_min| campo_temp_max |mensagem_alert                                                                        |
        |              | 40             |Campo temperatura mínima deve ser preenchido.                                         |
        | 5            |                |Campo temperatura máxima deve ser preenchido.                                         |
        | -1           | 0              |A temperatura mínima é 0°C e também não pode ser maior ou igual a temperatura máxima. |
        | -1           | 0              |A temperatura mínima é 0°C e também não pode ser maior ou igual a temperatura máxima. |
        | 10           | 5              |A temperatura mínima é 0°C e também não pode ser maior ou igual a temperatura máxima. |
        | 0            | 50,1           |Temperatura máxima é de 50°C.                                                         |   

@editar_datalogger_correto
Cenario: Editar datalogger correto
    Dado que estou na tela de edição de dados do datalogger
    Quando edito todos os campos de datalogger
    Então a mensagem de sucesso é exibida "Dados do datalogger atualizado com sucesso." 

