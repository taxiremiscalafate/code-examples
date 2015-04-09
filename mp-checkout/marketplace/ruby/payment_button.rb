require 'rubygems'
require 'rack'
require 'mercadopago.rb'

class Button
	def call(env)
		mp = MercadoPago.new('SELLER_AT') # seller access_token
		preferenceData = {
			"items" => [
				[
					"title" => "Item title",
					"description" => "Description",
					"quantity" => 1,
					"unit_price" => 50,
					"currency_id" => "CURRENCY_ID",
					"picture_url" => "https://www.mercadopago.com/org-img/MP3/home/logomp3.gif"
				]
			],
			"marketplace_fee" => 2.29 # fee to collect
		}
		preference = mp.create_preference(preferenceData)

		html =  '<!doctype html>
				<html>
					<head>
						<title>Pay</title>
					</head>
					<body>
						<a href="' + preference['response']['init_point'] + '">Pay</a>
					</body>
				</html>'

		return [200, {'Content-Type' => 'text/html'}, [html]]
	end
end

Rack::Handler::WEBrick.run(Button.new, :Port => 9000)