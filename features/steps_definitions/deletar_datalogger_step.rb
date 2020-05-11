Dado("que crio um novo datalogger") do
    @login = Login.new 
    visit(ENV['url_default'])
    login = "loss@mailinator.com"
    senha = "123qweasd"
    @login.autenticacao_login(login, senha)
    sleep(5)
    find(".responsive_button.btn.btn-success").click
    find("#datalogger_name").send_keys("DATALOGGER-9999")
    find("#datalogger_min_temp").send_keys("0")
    find("#datalogger_max_temp").send_keys("50")
    find(".btn.responsive_button.btn.btn-info.btn-sm").click
end

Quando("deleto o datalogger") do
    find(".btn.btn-danger.btn-sm", match: :first).click
    popup = page.driver.browser.switch_to.alert
    popup.accept
end

Então("a mensagem de sucesso deve ser {string}") do |mensagem_sucesso|
    expect(page).to have_content(mensagem_sucesso) 
end