class Datalogger < SitePrism::Page
    element :campo_nome_datalogger, '#datalogger_name'
    element :campo_temp_min, '#datalogger_min_temp'
    element :campo_temp_max, '#datalogger_max_temp'
    element :campo_obs, '#datalogger_obs'
    element :botao_salvar, '.btn.responsive_button.btn.btn-info.btn-sm'
    element :botao_novo_datalogger, '.responsive_button.btn.btn-success'
    element :botao_deletar, '.btn.btn-warning'

    def acessar_criar_novo_datalogger
        wait_until_botao_novo_datalogger_visible
        botao_novo_datalogger.click
    end

    def acessar_editar_datalogger
        wait_until_botao_deletar_visible
        find(".btn.btn-warning", match: :first).click
    end

    def digitar_nome_datalogger(campo_nome)
        campo_nome_datalogger.set ""
        campo_nome_datalogger.set campo_nome
        botao_salvar.click
    end

    def digitar_campos_temperatura(temp_min, temp_max)
        date = Time.now
        campo_nome_datalogger.set ""
        campo_nome_datalogger.set "DATALOGGER-#{date.strftime("%m%d%Y%H%M%S")}"
        campo_temp_min.set ""
        campo_temp_min.set temp_min
        campo_temp_max.set ""
        campo_temp_max.set temp_max
        botao_salvar.click
    end

    def criar_datalogger  
        date = Time.now
        campo_nome_datalogger.set ""
        campo_nome_datalogger.set "DATALOGGER-#{date.strftime("%m%d%Y%H%M%S")}"
        campo_temp_min.send_keys("")
        campo_temp_min.set "0"
        campo_temp_max.send_keys("")
        campo_temp_max.set "50"
        campo_obs.set "" 
        campo_obs.set "Gerado em #{date.strftime("%d/%m/%Y %H:%M:%S")}"
        botao_salvar.click
    end

    def deletar_datalogger
        find(".btn.btn-danger.btn-sm", match: :first).click
        popup = page.driver.browser.switch_to.alert
        popup.accept
    end
end