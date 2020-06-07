class Paginacao < SitePrism::Page

    def clicar_botao_paginacao
        find(:xpath, "/html/body/div[2]/div/nav/ul/li[2]/a").click
    end

end