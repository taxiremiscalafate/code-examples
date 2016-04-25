require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

$cards = $mp.get ("/v1/customers/[CUSTOMER_ID]/cards")

puts ($cards["response"])
