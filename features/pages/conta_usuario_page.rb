class ContaUsuario < SitePrism::Page
    element :menu_usuario, '.nav-link.dropdown-toggle'
    element :link_editar_dados, '#editar_dados'
    element :botao_deletar_conta, '.responsive_button.btn.btn-danger'
    element :campo_nome_usuario, '#user_name'
    element :campo_senha_usuario, '#user_password'
    element :campo_confirmacao_senha, '#user_password_confirmation'
    element :campo_senha_atual, '#user_current_password'
    element :campo_email_usuario, '#user_email'
    element :link_logout, '#logout'
    element :botao_atualizar, '.btn.responsive_button.btn.btn-info'    
    
    def clicar_editar_usuario
        menu_usuario.click
        link_editar_dados.click
    end    

    def realizar_logout
        menu_usuario.click
        link_logout.click
    end

    def cancelar_conta_usuario
        page.execute_script "window.scrollBy(0,10000)"
        botao_deletar_conta.click
        popup = page.driver.browser.switch_to.alert
        popup.accept
    end

    def editar_nome_usuario(nome_invalido)
        campo_nome_usuario.set ""
        campo_nome_usuario.set nome_invalido
        botao_atualizar.click 
    end

    def alterar_nome_usuario
        campo_nome_usuario.set ""
        campo_nome_usuario.set "Loss Rodrigues" 
        campo_senha_atual.set "123qweasd"
        botao_atualizar.click 
    end

    def alterar_senha_usuario(senha)
        campo_senha_usuario.set ""
        campo_senha_usuario.set senha
        botao_atualizar.click
    end

    def alterar_confirmacao_senha(senha)
        campo_confirmacao_senha.set ""
        campo_confirmacao_senha.set senha
        botao_atualizar.click
    end

    def alterar_email_usuario_incorreto(email)
        campo_email_usuario.set ""
        campo_email_usuario.set email
        botao_atualizar.click
    end

    def alterar_senha_incorreta(senha, confirmacao_senha)
        campo_senha_usuario.set senha
        campo_confirmacao_senha.set confirmacao_senha
        campo_senha_atual.set "123qweasd"
        botao_atualizar.click
    end
end