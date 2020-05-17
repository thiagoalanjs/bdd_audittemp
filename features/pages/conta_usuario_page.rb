class ContaUsuario < SitePrism::Page
    element :menu_usuario, '.nav-link.dropdown-toggle'
    element :link_editar_dados, '#editar_dados'
    element :botao_deletar_conta, '.responsive_button.btn.btn-danger'

    def clicar_editar_usuario
        menu_usuario.click
        link_editar_dados.click
        page.execute_script "window.scrollBy(0,10000)"
        botao_deletar_conta.click
        popup = page.driver.browser.switch_to.alert
        popup.accept
    end    
end