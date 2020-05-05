Dado("que acesso a aplicação") do
    @login = Login.new 
    visit(ENV['url_default'])
end

Quando("realizo a autenticação com {string} e {string} incorretos") do |login, senha|
   @login.autenticacao_login_invalido(login, senha)
end

Então("temos a {string} de erro") do |mensagem|
    expect(page).to have_content(mensagem)
end

Quando("realizo a autenticação com {string} e {string} corretos") do |login, senha|
    @login.autenticacao_login(login, senha)
end

Então("temos a {string} de sucesso") do |mensagem|
    expect(page).to have_content(mensagem)
end