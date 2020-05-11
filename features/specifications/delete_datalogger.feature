#language: pt
@deletar_datalogger
Funcionalidade: Deletar datalogger na lista

Cenario: Deletar dataloger
    Dado que crio um novo datalogger
    Quando deleto o datalogger
    Então a mensagem de sucesso deve ser "Datalogger deletado com sucesso."
    