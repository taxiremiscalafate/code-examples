require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

$payment = $mp.get ("/v1/payments/[ID]")

puts ($payment)
