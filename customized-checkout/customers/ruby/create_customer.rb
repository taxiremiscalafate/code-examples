require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

$customer = $mp.post ("/v1/customers", Hash["email" => "test@test.com"])

puts ($customer)
