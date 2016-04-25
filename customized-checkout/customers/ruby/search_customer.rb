require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

$filters = Hash [
    "email" => "your.payer@email"
]

$customer = $mp.get ("/v1/customers/search", $filters)

puts ($customer)
