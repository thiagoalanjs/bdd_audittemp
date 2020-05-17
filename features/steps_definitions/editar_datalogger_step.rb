Dado("que estou na tela de edição de dados do datalogger") do
    email = "loss@mailinator.com"
    senha = "123qweasd"
    login.autenticacao_login(email, senha)
    datalogger.acessar_editar_datalogger
end

Quando("edito o campo nome com o dado {string}") do |campo_nome|
    datalogger.digitar_nome_datalogger(campo_nome)
end

Quando("edito o campos de temperaturas minima e máxima com o dados {string} e {string}") do |temp_min, temp_max|
    datalogger.digitar_campos_temperatura(temp_min, temp_max)
end

Quando("edito todos os campos de datalogger") do
    datalogger.criar_datalogger
end