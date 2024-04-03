#language: pt

 Funcionalidade: Pedidos

    Como um usuário do site, eu quero selecionar e comprar cafés
     Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

     @smoke
     Cenário: Compra bem sucedida

      Dado que estou na página principal da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
      Quando faço a buscar do seguinte CEP "04534011"
        E informo os demais dados do endereço
             | number   | 0001    |
             | details  | Apto 02 |
        E escolho a forma de pagamento "À vista no Pix"
        E por fim finalizo a compra
    Então sou redicionado para a página de confirmação de Pedidos
        E deve der informando o seguinte prazo de entrega: "20 min - 30 min"
        E o tipo de pagamento: "À vista no Pix"