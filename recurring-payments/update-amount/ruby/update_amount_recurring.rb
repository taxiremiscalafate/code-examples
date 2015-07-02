require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')

$mp.put("/preapproval/:ID", Hash["auto_recurring" => Hash["transaction_amount" => NEW_AMOUNT]])