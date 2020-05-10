Dado("que acesso a pagina de Cadastro") do
    visit(ENV['url_default'])
    find('.responsive_button.btn.btn-warning').click
end

Quando("preencher o nome com {string}") do |campo_nome|
    sleep 3
    find("#user_name").send_keys(campo_nome)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click
end

Quando("preencher o email com {string}") do |email|
    sleep 3
    find("#user_email").click
    find("#user_email").send_keys(email)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click
end

Quando("preencher a senha com {string}") do |senha|
    sleep 3
    find("#user_password").click
    find("#user_password").send_keys(senha)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click    
end

Quando("preencher a confirmação de senha com {string}") do |senha|
    sleep 3
    find("#user_password_confirmation").click
    find("#user_password_confirmation").send_keys(senha)
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click        
end

Então("valido mensagem de erro {string} e {string}") do |mensagem_alert, mensagem_erro|
    expect(page).to have_content(mensagem_alert)
    expect(page).to have_content(mensagem_erro)
end

Quando("preencho todos os campos corretamente") do
    sleep 3
    find("#user_name").send_keys("#{Faker::Name.name}")
    find("#user_email").send_keys("#{Faker::Internet.email}")
    find("#user_password").send_keys("QAWSED123")
    find("#user_password_confirmation").send_keys("QAWSED123")
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click
end

Então("valida a mensagem {string}") do |mensagem_sucesso|
    expect(page).to have_content(mensagem_sucesso)
end