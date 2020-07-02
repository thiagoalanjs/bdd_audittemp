class Login < SitePrism::Page
    element :campo_login, '#user_email'
    element :campo_senha, '#user_password'
    element :botao_entrar, '.btn.btn-lg.btn-danger.btn-block.text-uppercase'

    def autenticacao_login_invalido(login, senha)
        campo_login.set login
        campo_senha.set senha
        botao_entrar.click
    end

    def autenticacao_login(login, senha)
        campo_login.set login
        campo_senha.set senha
        botao_entrar.click
    end

end