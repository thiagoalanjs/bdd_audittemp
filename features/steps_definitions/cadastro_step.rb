Dado("que acesso a pagina de Cadastro") do
    visit(ENV['url_default'])
    find('.responsive_button.btn.btn-warning').click
end

Quando("preencher o nome com {string}") do |campo_nome|
    find("#user_name").send_keys(campo_nome)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click
end

Quando("preencher o email com {string}") do |email|
    find("#user_email").click
    find("#user_email").send_keys(email)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click
end

Quando("preencher a senha com {string}") do |senha|
    find("#user_password").click
    find("#user_password").send_keys(senha)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click    
end

Quando("preencher a confirmação de senha com {string}") do |senha|
    find("#user_password_confirmation").click
    find("#user_password_confirmation").send_keys(senha)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click        
end

Então("valido mensagem de erro {string} e {string}") do |mensagem_alert, mensagem_erro|
    expect(page).to have_content(mensagem_alert)
    expect(page).to have_content(mensagem_erro)
end