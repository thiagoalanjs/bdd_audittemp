#language: pt
@deleta_conta
Funcionalidade: Deleta conta do usuário logado

Cenário: Deleta a conta
    Dado criei um cadastro
    Quando deleto a minha conta 
    Então não é possível realizar login novamente
    
