#language: pt
@recuperar_senha_email
Funcionalidade: Recuperar a senha via email

Esquema do Cenário: Validação de email
    Dado que estou na tela de recuperação de senha
    Quando digito o email "<email>"
    Então a mensagem exibida é "<mensagem>"

    Exemplos:
        |email                          | mensagem                       |
        |                               | Campo não pode ficar em branco |
        |@#$%@#$%@#$qwef@mailinator.com | Dados não encontrado.          |
        |emailsnãoexiste@gg.com         | Dados não encontrado.          |
        |lucaspotter@mailinator.com     | Você receberá um email com instruções sobre como redefinir sua senha em alguns minutos.|

@validacao_reset
Esquema do Cenário: Alteração de senha via email
    Dado recebo o email com título "Redefinir instruções de senha"
    Quando realizo a alteração de senha com os dados "<senha>" e "<confirmacao_senha>"
    Então a mensagem exibida é "<mensagem>"

    Exemplos:
        | senha                                | confirmacao_senha                   |  mensagem                                                    |
        |                                      |                                     |  Campo não pode ficar em branco.                             |
        | 1                                    |                                     |  Campo senha deve ter no mínimo 6 e máximo 30 caracteres.    |
        | 123#$%GSDGWgg   dfgsdfgsdfgsfgsdfgs  |                                     |  Campo senha deve ter no mínimo 6 e máximo 30 caracteres.    |
        |                                      | 1                                   |  Campo não pode ficar em branco.                             |                                  
        |                                      | 123#$%GSDGWgg   dfgsdfgsdfgsfgsdfgs |  Campo não pode ficar em branco.                             |
        | 12qwaszxf                            | qwaszxcvdfer                        |  As senhas não conferem.                                     |
        | 12qwaszxf                            | 12qwaszxf                           |  Sua senha foi alterada com sucesso. Agora você está logado. |
