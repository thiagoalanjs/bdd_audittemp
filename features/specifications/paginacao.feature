#language: pt
@paginacao
Funcionalidade: Paginação de datalogger 5 a cada página

Cenário: Valida que a paginação gera resultado
    Dado que os botões de paginação estão disponíves
    Quando click no botão para segunda página
    Então valido a url gerada