Dado("que os botões de paginação estão disponíves") do
    email = "loss@mailinator.com"
    senha = "123qweasd"
    login.autenticacao_login_invalido(email, senha)
end

Quando("click no botão para segunda página") do
    find(:xpath, "/html/body/div[2]/div/nav/ul/li[2]/a").click
end

Então("valido a url gerada") do
    expect(current_url).to eq "#{CONFIG['url_default']}dataloggers?page=2" 
    sleep 4
    expect(page).to have_content("Gerencie seu Datalogger")

end