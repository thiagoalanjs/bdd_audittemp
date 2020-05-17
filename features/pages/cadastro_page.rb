class Cadastro < SitePrism::Page
    element :campo_nome, '#user_name'
    element :campo_email, '#user_email' 
    element :campo_senha, '#user_password'
    element :campo_confirmacao_senha, '#user_password_confirmation'
    element :botao_criar, '.btn.btn.btn-lg.btn-danger.btn-block.text-uppercase'

    def acessar_cadastro
        visit(ENV['url_default'])
        find('.responsive_button.btn.btn-warning').click
    end

    def digitar_nome(nome)
        wait_until_campo_nome_visible
        campo_nome.click
        campo_nome.set nome
        botao_criar.click
    end

    def digitar_email(email)
        wait_until_campo_email_visible
        campo_email.click
        campo_email.set email
        botao_criar.click
    end

    def digitar_senha(senha)
        wait_until_campo_senha_visible
        campo_senha.click
        campo_senha.set senha
        botao_criar.click
    end

    def digitar_confirmacao_senha(senha)
        wait_until_campo_confirmacao_senha_visible
        campo_confirmacao_senha.click
        campo_confirmacao_senha.set senha
        botao_criar.click
    end

    def validar_senha_errada
        wait_until_campo_senha_visible
        campo_senha.click
        campo_senha.set "yttrtyryuf"
        campo_confirmacao_senha.click     
        campo_confirmacao_senha.set "ahgdyuet"
        botao_criar.click
    end

    def criar_cadastro
        date = Time.now
        campo_nome.click
        campo_nome.set "#{Faker::FunnyName.two_word_name}"
        campo_email.click
        campo_email.set "criar_cadastro#{date.strftime("%m%d%Y%H%M%S")}@mailinator.com"
        campo_senha.click
        campo_senha.set "QAWSED123"
        campo_confirmacao_senha.click
        campo_confirmacao_senha.set "QAWSED123"
        botao_criar.click 
    end
end