Dado("que os botões de paginação estão disponíves") do
    email = "loss@mailinator.com"
    senha = "123qweasd"
    login.autenticacao_login_invalido(email, senha)
end

Quando("click no botão para segunda página") do
    paginacao.clicar_botao_paginacao
end

Então("valido a url gerada") do
    expect(current_url).to eq "#{CONFIG['url_default']}dataloggers?page=2" 
    expect(page).to have_content("Gerencie seu Datalogger")
end