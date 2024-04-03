Dado('que iniciei a compra do item {string}') do |product_name|
    @home.buy(product_name)
end
  
Quando('faço a buscar do seguinte CEP {string}') do |zipcode|
   @checkout.find_zipcode(zipcode)
end

Quando('informo os demais dados do endereço') do |table|
  @checkout.fill_address(table.rows_hash)
end

Quando('escolho a forma de pagamento {string}') do |payment_type|
   @checkout.choice_payment(payment_type)
end

Quando('por fim finalizo a compra') do
   @checkout.submit
end

Então('sou redicionado para a página de confirmação de Pedidos') do
    @order.assert_order
end

Então('deve der informando o seguinte prazo de entrega: {string}') do |delivery_tyme|
   @order.assert_delivery_time(delivery_tyme)
end

Então('o tipo de pagamento: {string}') do |delivery_pay|
    @order.assert_delivery_payment(delivery_pay)
   
end
  