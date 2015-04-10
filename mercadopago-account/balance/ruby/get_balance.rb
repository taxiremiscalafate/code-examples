require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')

$balance = $mp.get ("/users/USER_ID/mercadopago_account/balance")

puts ($balance)
