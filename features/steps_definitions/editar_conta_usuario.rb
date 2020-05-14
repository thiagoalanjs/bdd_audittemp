Dado("que acesso a página de Editar dados") do
    @login = Login.new 
    visit(ENV['url_default'])
    login = "loss@mailinator.com"
    senha = "123qweasd"
    @login.autenticacao_login(login, senha)
    sleep(5)
    find(".nav-link.dropdown-toggle").click
    find(:xpath, "//*[@id='navbarSupportedContent']/ul[8]/li[2]/div/a[1]").click    
end

Quando("altero o campo nome com {string}") do |nome_invalido|
    find("#user_name").set ""
    find("#user_name").send_keys(nome_invalido)
    find(".btn.responsive_button.btn.btn-info").click
end

Então("a mensagem exibida é {string}") do |mensagem_erro|
    expect(page).to have_content(mensagem_erro)
end

Quando("altero o nome do usuário") do
    find("#user_name").set ""
    find("#user_name").send_keys("Loss Rodrigues") 
    find("#user_current_password").send_keys("123qweasd")
    find(".btn.responsive_button.btn.btn-info").click
    expect(page).to have_content("Loss Rodrigues") 
end

Então("a mensagem de sucesso exibida é {string}") do |mensagem_sucesso|   
    expect(page).to have_content(mensagem_sucesso)
end

Então("altero novamente para o nome anterior") do
    find(".nav-link.dropdown-toggle").click
    find(:xpath, "//*[@id='navbarSupportedContent']/ul[8]/li[2]/div/a[1]").click
    find("#user_name").set ""
    find("#user_name").send_keys("Louise Loss")    
    find("#user_current_password").send_keys("123qweasd")
    find(".btn.responsive_button.btn.btn-info").click
end

Quando("altero a senha com {string}") do |senha|
    find("#user_password").set ""
    find("#user_password").send_keys(senha)
    find(".btn.responsive_button.btn.btn-info").click
end

Quando("altero a confirmação de senha com {string}") do |senha|
    find("#user_password_confirmation").set ""
    find("#user_password_confirmation").send_keys(senha)
    find(".btn.responsive_button.btn.btn-info").click
end

Quando("altero o  email {string} do usuário com dados incorreto") do |email|
    find("#user_email").set ""
    find("#user_email").send_keys(email)
    find(".btn.responsive_button.btn.btn-info").click
end

Quando("altero o email do usuário") do
    find("#user_email").set ""
    find("#user_email").send_keys("loss_alterado@mailinator.com")
    find("#user_current_password").send_keys("123qweasd")
    find(".btn.responsive_button.btn.btn-info").click
    find(".nav-link.dropdown-toggle").click
    find(:xpath, "//*[@id='navbarSupportedContent']/ul[8]/li[2]/div/a[2]").click 
end

Então("realizo login com o novo email") do
    @login = Login.new 
    login = "loss_alterado@mailinator.com"
    senha = "123qweasd"
    sleep(3)
    @login.autenticacao_login(login, senha)
    find(".nav-link.dropdown-toggle").click
    find(:xpath, "//*[@id='navbarSupportedContent']/ul[8]/li[2]/div/a[1]").click 
    
    find("#user_email").set ""
    find("#user_email").send_keys("loss@mailinator.com")
    find("#user_current_password").send_keys("123qweasd")
    find(".nav-link.dropdown-toggle").click
    find(".btn.responsive_button.btn.btn-info").click
end

Quando("altero os dados de senha e confirmação de senha com {string} e {string}") do |senha, confirmacao_senha|
    find("#user_password").send_keys(senha)
    find("#user_password_confirmation").send_keys(confirmacao_senha)
    find("#user_current_password").send_keys("123qweasd")
    find(".btn.responsive_button.btn.btn-info").click
end