#language:pt

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

    Contexto:
        Dado que iniciei a compra do item:
            | name     | Café com Leite |
            | price    | R$ 19,99       |
            | delivery | R$ 10,00       |
            | total    | R$ 29,99       |
            
    Cenario: Aplicar Desconto de 20%

    #   O usuário deve ser capaz de aplicar um cupom de 20% de desconto válido no checkout.
    #   desconto deve ser aplicado apenas ao valor do produto e o valor final deve ser recalculado corretamente.
 
   
    Quando aplico o seguinte cupom: "MEUCAFE"
    Então o valor final da compra deve ser atualizado para "R$ 25,99"
    
   
    # Cenario: Cupom Expirado
    
    # Ao tentar usar um cupom expirado, o usuário deve receber uma notificação informando que o cupom está expirado.
    # Nenhum desconto deve ser aplicado e o valor total da compra deve permanecer inalterado.


    # Quando aplico o seguinte cupom: "PROMO20" 
    # Então deve ver a seguinte notificação "Cupom expirado!"
    #     E o valor final da compra deve permanecer o mesmo

   
    # Cenario: Cupom Inválido

    # Ao tentar usar um cupom inválido, o usuário deve receber uma notificação informando que o cupom é inválido.
    # Nenhum desconto deve ser aplicado e o valor total da compra deve permanecer inalterado

    
    # Quando aplico o seguinte cupom: "Teste" 
    # Então deve ver a seguinte notificação "Cupom inválido!"
    #     E o valor final da compra deve permanecer o mesmo

    
    Esquema do Cenário: Tentativa de aplicar o desconto

     Quando aplico o seguinte cupom: "<cupom>" 
    Então deve ver a seguinte notificação "<saida>"
        E o valor final da compra deve permanecer o mesmo


    Exemplos:
    | cupom   |  saida           |
    | PROMO20 |  Cupom expirado! | 
    | Teste   |  Cupom inválido! |