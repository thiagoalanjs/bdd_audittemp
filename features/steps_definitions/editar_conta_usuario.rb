Dado("que acesso a página de Editar dados") do
    email = "loss@mailinator.com"
    senha = "123qweasd"
    login.autenticacao_login(email, senha)
    conta_usuario.clicar_editar_usuario   
end

Quando("altero o campo nome com {string}") do |nome_invalido|
    conta_usuario.editar_nome_usuario(nome_invalido)
end

Então("a mensagem exibida é {string}") do |mensagem_erro|
    expect(page).to have_content(mensagem_erro)
end

Quando("altero o nome do usuário") do
    conta_usuario.alterar_nome_usuario
    expect(page).to have_content("Loss Rodrigues") 
end

Então("a mensagem de sucesso exibida é {string}") do |mensagem_sucesso|   
    expect(page).to have_content(mensagem_sucesso)
end

Então("altero novamente para o nome anterior") do
    conta_usuario.realizar_logout

    email = "loss@mailinator.com"
    senha = "123qweasd"

    login.autenticacao_login(email, senha)
    conta_usuario.clicar_editar_usuario
    conta_usuario.campo_nome_usuario.set 'Louise Loss'
    conta_usuario.campo_senha_atual.set '123qweasd'
    conta_usuario.botao_atualizar.click
end

Quando("altero a senha com {string}") do |senha|
    conta_usuario.alterar_senha_usuario(senha)
end

Quando("altero a confirmação de senha com {string}") do |senha|
    conta_usuario.alterar_confirmacao_senha(senha)
end

Quando("altero o  email {string} do usuário com dados incorreto") do |email|
    conta_usuario.alterar_email_usuario_incorreto(email)
end

Quando("altero o email do usuário") do
    conta_usuario.campo_email_usuario.set 'loss_alterado@mailinator.com'
    conta_usuario.campo_senha_atual.set "123qweasd"
    conta_usuario.botao_atualizar.click
    conta_usuario.realizar_logout 
end

Então("realizo login com o novo email") do
    email = "loss_alterado@mailinator.com"
    senha = "123qweasd"
    
    login.autenticacao_login(email, senha)
    conta_usuario.clicar_editar_usuario

    conta_usuario.campo_email_usuario.set ''
    conta_usuario.campo_email_usuario.set 'loss@mailinator.com'
    conta_usuario.campo_senha_atual.set '123qweasd'
    conta_usuario.botao_atualizar.click
end

Quando("altero os dados de senha e confirmação de senha com {string} e {string}") do |senha, confirmacao_senha|
    conta_usuario.alterar_senha_incorreta(senha, confirmacao_senha)
end