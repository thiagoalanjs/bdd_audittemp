Dado("que acesso a pagina de Cadastro") do
    cadastro.acessar_cadastro
end

Quando("preencher o nome com {string}") do |nome|
    cadastro.digitar_nome(nome)
end

Quando("preencher o email com {string}") do |email|
    cadastro.digitar_email(email)
end

Quando("preencher a senha com {string}") do |senha|
    cadastro.digitar_senha(senha)
end

Quando("preencher a confirmação de senha com {string}") do |senha|
    cadastro.digitar_confirmacao_senha(senha)       
end

Quando("preencher a o campo senha e confirmação de senha") do
    cadastro.validar_senha_errada    
end

Então("valido mensagem de erro {string} e {string}") do |mensagem_alert, mensagem_erro|
    expect(page).to have_content(mensagem_alert)
    expect(page).to have_content(mensagem_erro)
end

Quando("preencho todos os campos corretamente") do
    cadastro.criar_cadastro
end

Então("valida a mensagem {string}") do |mensagem_sucesso|
    expect(page).to have_content(mensagem_sucesso)
end