Dado("que estou na tela de recuperação de senha") do
    visit(ENV['url_default'])
    find(:xpath, "//a[contains(text(), 'Esqueceu a senha?')]").click
end

Quando("digito o email {string}") do |email|
    sleep 3
    find("#user_email").send_keys(email)
    find(".btn.btn.btn-lg.btn-danger.btn-block.text-uppercase").click
end

Dado("que solicito recuperação de senha") do
    visit(ENV['url_default'])
    find(:xpath, "//a[contains(text(), 'Esqueceu a senha?')]").click
    find("#user_email").send_keys("lucaspotter@mailinator.com")
    find(".btn.btn.btn-lg.btn-danger.btn-block.text-uppercase").click
    expect(page).to have_content("Você receberá um email com instruções sobre como redefinir sua senha em alguns minutos.")
end

Quando("recebo o email com título {string}") do |titulo_email|
     visit("https://www.mailinator.com/v3/index.jsp?zone=public&query=lucaspotter#/#inboxpane")
     find(:xpath, "//*[contains(text(), '#{titulo_email}')]", match: :first).click
        within_frame 'msg_body' do
            find(:xpath, "//*[contains(text(), 'Alteração de senha')]").click
        end  
end

Quando("realizo a alteração de senha com os dados {string} e {string}") do |senha, confirmacao_senha|
    window = switch_to_window { title == 'Audittemp - Controle de temperatura' }
    within_window window do
        find("#user_password").send_keys(senha)
        find("#user_password_confirmation").send_keys(confirmacao_senha)
        find(".btn.btn.btn-info").click
    end
end