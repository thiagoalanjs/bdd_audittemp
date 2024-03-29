#language: pt
@criar_datalogger
Funcionalidade: Criar dataloggers

Esquema do Cenario: Preencher nome incorreto
    Dado que acesso a tela de criação de dataloggers
    Quando preencho o campo nome com o dado "<campo_nome>"
    Então a mensagem "<mensagem_alert>" é exibida 

    Exemplos:
        |campo_nome                          |mensagem_alert                                    |
        |                                    |Campo nome deve ser preenchido.                   |
        | TH                                 |Campo deve ter no mínimo 3 e máximo 30 caracteres |
        | DATALOGGER-1231231231231231231231  |Campo deve ter no mínimo 3 e máximo 30 caracteres |
        | DT-TEST-NO-DELETE                  |Já existe um datalogger cadastrado com esse nome. |                
        
Esquema do Cenario: Preencher os campos de temperaturas com dados incorretos
    Dado que acesso a tela de criação de dataloggers
    Quando preencho o campos de temperaturas minima e máxima com o dados "<temp_min>" e "<temp_max>" 
    Então a mensagem "<mensagem_alert>" é exibida 

    Exemplos:
        |temp_min| temp_max |mensagem_alert                                                                        |
        |        | 40       |Campo temperatura mínima deve ser preenchido.                                         |
        | 5      |          |Campo temperatura máxima deve ser preenchido.                                         |
        | -1     | 0        |A temperatura mínima é 0°C e também não pode ser maior ou igual a temperatura máxima. |
        | -1     | 0        |A temperatura mínima é 0°C e também não pode ser maior ou igual a temperatura máxima. |
        | 10     | 5        |A temperatura mínima é 0°C e também não pode ser maior ou igual a temperatura máxima. |
        | 0      | 50,1     |Temperatura máxima é de 50°C.                                                         |   

@criar_datalogger_correto
Cenario: Criar datalogger correto
    Dado que acesso a tela de criação de dataloggers
    Quando preencho todos os na criação de datalogger
    Então a mensagem de sucesso é exibida "Datalogger criado com sucesso." 

