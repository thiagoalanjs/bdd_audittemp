#language: pt
@cadastro
Funcionalidade: Cadastro de usuário para uso da aplicação

@campo_nome
Esquema do Cenario: Validação do campo nome com dados incorretos
    Dado que acesso a pagina de Cadastro
    Quando preencher o nome com "<campo_nome>"
    Então valido mensagem de erro "<mensagem_alert>" e "<mensagem_erro>"

    Exemplos:
        |mensagem_alert                   | campo_nome                                      | mensagem_erro                                                |
        |Verifique os dados abaixo:       | A                                               | Campo deve ter no mínimo 3 e máximo 20 caracteres            |
        |Verifique os dados abaixo:       |                                                 | Campo nome deve ser preenchido.                              |
        |Verifique os dados abaixo:       | !@#QWEASDZXCVBNFGHRTY$%ŸIU*YIUHKJzxczxczxc      | Campo deve ter no mínimo 3 e máximo 20 caracteres            |

@campo_email
Esquema do Cenario: Validação do campo email com dados incorretos
    Dado que acesso a pagina de Cadastro
    Quando preencher o email com "<email>"
    Então valido mensagem de erro "<mensagem_alert>" e "<mensagem_erro>"

    Exemplos:
        |mensagem_alert                   | email                       | mensagem_erro                      |
        |Verifique os dados abaixo:       |                             | Campo email deve ser preenchido.   |
        |Verifique os dados abaixo:       | abc133                      | Formato de email inválido          |
        |Verifique os dados abaixo:       | naovale@                    | Formato de email inválido          |
        |Verifique os dados abaixo:       | q#%@#$%@#$%@mailinator.com  | Formato de email inválido          |        
        |Verifique os dados abaixo:       | q#%@#$%@#$%                 | Formato de email inválido          | 
        |Verifique os dados abaixo:       | @mailinator.com             | Formato de email inválido          |
        |Verifique os dados abaixo:       | loss@mailinator.com         | Email já está cadastrado.          |

@campo_password
Esquema do Cenario: Validação do campo password com dados incorretos
    Dado que acesso a pagina de Cadastro
    Quando preencher a senha com "<senha>"
    Então valido mensagem de erro "<mensagem_alert>" e "<mensagem_erro>"

    Exemplos:
        |mensagem_alert                   | senha                                                                 | mensagem_erro                                             |
        |Verifique os dados abaixo:       |                                                                       | Campo senha deve ser preenchido.                          |
        |Verifique os dados abaixo:       | 1                                                                     | Campo senha deve ter no mínimo 6 e máximo 30 caracteres.  |
        |Verifique os dados abaixo:       | 123#$%GSDGWgg   dfgsdfgsdfgsfgsdfgsASDASDDWDEWDQWEQTQERTERTWERT U     | Campo senha deve ter no mínimo 6 e máximo 30 caracteres.  |

@campo_password_confirmation
Esquema do Cenario: Validação do campo password com dados incorretos
    Dado que acesso a pagina de Cadastro
    Quando preencher a confirmação de senha com "<senha>"
    Então valido mensagem de erro "<mensagem_alert>" e "<mensagem_erro>"

    Exemplos:
        |mensagem_alert                   | senha                                                                 | mensagem_erro                                                            |
        |Verifique os dados abaixo:       |                                                                       | Campo confirmação de senha deve ser preenchido.                          |
        |Verifique os dados abaixo:       | 1                                                                     | Campo confirmação de senha deve ter no mínimo 6 e máximo 30 caracteres.  |
        |Verifique os dados abaixo:       | 123#$%GSDGWgg   dfgsdfgsdfgsfgsdfgsASDASDDWDEWDQWEQTQERTERTWERT U     | Campo confirmação de senha deve ter no mínimo 6 e máximo 30 caracteres.  |

@campo_pass_password_confirmation
Esquema do Cenario: Validação do campo password com dados incorretos
    Dado que acesso a pagina de Cadastro
    Quando preencher a o campo senha e confirmação de senha
    Então valido mensagem de erro "<mensagem_alert>" e "<mensagem_erro>"

    Exemplos:
        |mensagem_alert                   | mensagem_erro           |
        |Verifique os dados abaixo:       | As senhas não conferem.  |

@cadastro_completo
Cenario: Cadastro complexo
    Dado que acesso a pagina de Cadastro
    Quando preencho todos os campos corretamente
    Então valida a mensagem "Bem vindo! Seu cadastro foi feito com sucesso."
