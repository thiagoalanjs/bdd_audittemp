Dado("que acesso a tela de criação de dataloggers") do
   email = "loss@mailinator.com"
   senha = "123qweasd"
   login.autenticacao_login(email, senha)
   datalogger.acessar_criar_novo_datalogger
end

Quando("preencho o campo nome com o dado {string}") do |campo_nome|
   datalogger.digitar_nome_datalogger(campo_nome)
end

Então("a mensagem {string} é exibida") do |mensagem_alert|
   expect(page).to have_content(mensagem_alert)
end

Quando("preencho o campos de temperaturas minima e máxima com o dados {string} e {string}") do |temp_min, temp_max|
   datalogger.digitar_campos_temperatura(temp_min, temp_max)    
end

Quando("preencho todos os na criação de datalogger") do
   datalogger.criar_datalogger
end

Então("a mensagem de sucesso é exibida {string}") do |mensagem_sucesso|
   expect(page).to have_content(mensagem_sucesso)
end