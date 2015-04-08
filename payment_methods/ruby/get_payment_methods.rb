require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

$payment_methods = $mp.get ("/v1/payment_methods")

puts ($payment_methods)
