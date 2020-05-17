Dado("que crio um novo datalogger") do
    email = "loss@mailinator.com"
    senha = "123qweasd"
    login.autenticacao_login(email, senha)
    datalogger.acessar_criar_novo_datalogger
    datalogger.criar_datalogger
end

Quando("deleto o datalogger") do
   datalogger.deletar_datalogger
end

Então("a mensagem de sucesso deve ser {string}") do |mensagem_sucesso|
    expect(page).to have_content(mensagem_sucesso) 
end