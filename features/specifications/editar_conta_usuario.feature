#language: pt
@editar_conta_usuario
Funcionalidade: Editar dados da conta do usuário

Esquema do Cenario: Alterar nome do usuário com dados incorretos
    Dado que acesso a página de Editar dados
    Quando altero o campo nome com "<nome_invalido>"
    Então a mensagem exibida é "<mensagem_erro>"

    Exemplos:
        |nome_invalido                        |mensagem_erro                                   |  
        |                                     |Campo nome deve ser preenchido.                   |
        |Jo                                   |Campo deve ter no mínimo 3 e máximo 20 caracteres |
        |Arnold Alois Schwarzenegger da Silva |Campo deve ter no mínimo 3 e máximo 20 caracteres |

Cenário: Alteração de nome corretamente
    Dado que acesso a página de Editar dados
    Quando altero o nome do usuário
    Então a mensagem de sucesso exibida é "Seus dados foram atualizados com sucesso."     
    Então altero novamente para o nome anterior

# Esquema do Cenario: Alteração do campo password com dados incorretos
#     Dado que acesso a página de Editar dados
#     Quando altero a confirmação de senha com "<senha>"
#     Então a mensagem exibida é "<mensagem_erro>"

#     Exemplos:
#         | senha                                                                 | mensagem_erro                                                            |
#         | 1                                                                     | Campo confirmação de senha deve ter no mínimo 6 e máximo 30 caracteres.  |
#         | 123#$%GSDGWgg   dfgsdfgsdfgsfgsdfgsASDASDDWDEWDQWEQTQERTERTWERT U     | Campo confirmação de senha deve ter no mínimo 6 e máximo 30 caracteres.  |

# Esquema do Cenario: Alteração do campo password com dados incorretos
#     Dado que acesso a página de Editar dados
#     Quando altero a confirmação de senha com "<senha>"
#     Então a mensagem exibida é "<mensagem_erro>"

#     Exemplos:
#         | senha                                                                 | mensagem_erro                                                            |
#         | 1                                                                     | Campo confirmação de senha deve ter no mínimo 6 e máximo 30 caracteres.  |
#         | 123#$%GSDGWgg   dfgsdfgsdfgsfgsdfgsASDASDDWDEWDQWEQTQERTERTWERT U     | Campo confirmação de senha deve ter no mínimo 6 e máximo 30 caracteres.  |
