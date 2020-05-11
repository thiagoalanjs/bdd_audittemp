Dado("criei um cadastro") do
    visit(ENV['url_default'])
    find('.responsive_button.btn.btn-warning').click
    sleep 3
    find("#user_name").send_keys("Donkey Kong")
    find("#user_email").send_keys("donkeykong@mailinator.com")
    find("#user_password").send_keys("QAWSED123")
    find("#user_password_confirmation").send_keys("QAWSED123")
    find('.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase').click
end

Quando("deleto a minha conta") do
    find(".nav-link.dropdown-toggle").click
    find(:xpath, "//*[@id='navbarSupportedContent']/ul[8]/li[2]/div/a[1]").click
    page.execute_script "window.scrollBy(0,10000)"
    find(".responsive_button.btn.btn-danger").click
    popup = page.driver.browser.switch_to.alert
    popup.accept
end

Então("não é possível realizar login novamente") do
    @login = Login.new
    login = "donkeykong@mailinator.com"
    senha = "QAWSED123" 
    @login.autenticacao_login(login, senha)
    expect(page).to have_content("Email ou senha inválidos")
end