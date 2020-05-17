#language: pt
@login
Funcionalidade: Acessa aplicação via login

Esquema do Cenario: Validação de login
 	Dado que acesso a aplicação
	Quando realizo a autenticação com "<email>" e "<senha>" incorretos
	Então temos a "<mensagem>" de erro

	Exemplos:

		|email                |senha       | mensagem                 |
		|email@teste.com      |123456      | Email ou senha inválidos |
		|                     |            | Email ou senha inválidos |
		|teste@mailinator.com |            | Email ou senha inválidos |
		|                     |123456      | Email ou senha inválidos |

Esquema do Cenario: Login correto
	Dados que acesso a aplicação
	Quando realizo a autenticação com "<email>" e "<senha>" corretos
	Então temos a "<mensagem>" de sucesso

	Exemplos:
		|email				|senha       |mensagem           |
		|loss@mailinator.com|123qweasd	 |Logado com sucesso.|
