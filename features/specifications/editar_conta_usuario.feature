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

@editar_email_incorreto
Esquema do Cenario:
    Dado que acesso a página de Editar dados
    Quando altero o  email "<email>" do usuário com dados incorreto
    Então a mensagem exibida é "<mensagem_erro>" 

    Exemplos:
        | email                       | mensagem_erro                      |
        |                             | Campo email deve ser preenchido.   |
        | abc133                      | Formato de email inválido          |
        | naovale@                    | Formato de email inválido          |
        | q#%@#$%@#$%@mailinator.com  | Formato de email inválido          |        
        | q#%@#$%@#$%                 | Formato de email inválido          | 
        | @mailinator.com             | Formato de email inválido          |
        | dtrump@mailinator.com       | Email já está cadastrado.          |

@editar_email_correto
Cenario: 
    Dado que acesso a página de Editar dados
    Quando altero o email do usuário
    E realizo login com o novo email 
    Então a mensagem de sucesso exibida é "Seus dados foram atualizados com sucesso."  

@editar_confirmacao_senha_incorreta
Esquema do Cenario: Alteração do campo password com dados incorretos
     Dado que acesso a página de Editar dados
     Quando altero a confirmação de senha com "<senha>"
     Então a mensagem exibida é "<mensagem_erro>"

     Exemplos:
         | senha                                                              | mensagem_erro            |
         | 1                                                                  | As senhas não conferem.  |
         | 123#$%GSDGWgg   dfgsdfgsdfgsfgsdfgsASDASDDWDEWDQWEQTQERTERTWERT U  | As senhas não conferem.  |

@editar_alteracao_senha_incorreta
Esquema do Cenario: Alteração do campo password e confirmação de senha com dados incorretos
     Dado que acesso a página de Editar dados
     Quando altero os dados de senha e confirmação de senha com "<senha>" e "<confirmacao_senha>"
     Então a mensagem exibida é "As senhas não conferem."

     Exemplos:
         | senha          | confirmacao_senha |
         | 1derfergeg     | 67u5677           |
        