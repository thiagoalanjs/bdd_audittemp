Dado("que acesso a tela de criação de dataloggers") do
    @login = Login.new 
    visit(ENV['url_default'])
    login = "loss@mailinator.com"
    senha = "123qweasd"
    @login.autenticacao_login(login, senha)
    sleep(5)
    find(".responsive_button.btn.btn-success").click
end

Quando("preencho o campo nome com o dado {string}") do |campo_nome|
    find("#datalogger_name").send_keys(campo_nome)
    find(".btn.responsive_button.btn.btn-info.btn-sm").click
end

Então("a mensagem {string} é exibida") do |mensagem_alert|
    expect(page).to have_content(mensagem_alert)
end

Quando("preencho o campos de temperaturas minima e máxima com o dados {string} e {string}") do |campo_temp_min, campo_temp_max|
    find("#datalogger_name").send_keys("DATALOGGER-#{Faker::Number.number(10)}")
    find("#datalogger_min_temp").send_keys(campo_temp_min)
    find("#datalogger_max_temp").send_keys(campo_temp_max)
    find(".btn.responsive_button.btn.btn-info.btn-sm").click
end

Quando("preencho todos os na criação de datalogger") do
    find("#datalogger_name").send_keys("DATALOGGER-#{Faker::Number.number(10)}")
    find("#datalogger_min_temp").send_keys("0")
    find("#datalogger_max_temp").send_keys("50")
    find(".btn.responsive_button.btn.btn-info.btn-sm").click
end

Então("a mensagem de sucesso é exibida {string}") do |mensagem_sucesso|
    expect(page).to have_content(mensagem_sucesso)
end