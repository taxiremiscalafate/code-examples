require 'rubygems'
require 'rack'
require 'mercadopago'

class WebHook
 	def call(env)
		mp = MercadoPago.new('ACCESS_TOKEN')

		req = Rack::Request.new(env)

		event = JSON.parse (env['rack.input'].gets)

		if (event['type'] == 'payment')
			payment_info = mp.get("/v1/payments/"+event['data']['id']);

			return [200, {'Content-Type' => 'application/json'}, [payment_info.to_json]]
		else
			return [400, {'Content-Type' => 'text/plain'}, ['No payment event']]
		end
	end
end

Rack::Handler::WEBrick.run(WebHook.new, :Port => 80)