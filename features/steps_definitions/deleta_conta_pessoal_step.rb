Dado("criei um cadastro") do
    cadastro.acessar_cadastro
    cadastro.criar_cadastro_conta_usuario
end

Quando("deleto a minha conta") do
    conta_usuario.clicar_editar_usuario
    conta_usuario.cancelar_conta_usuario
end

Então("não é possível realizar login novamente") do
    email = "donkeykong@mailinator.com"
    senha = "QAWSED123" 
    login.autenticacao_login(email, senha)
    expect(page).to have_content("Email ou senha inválidos")
end