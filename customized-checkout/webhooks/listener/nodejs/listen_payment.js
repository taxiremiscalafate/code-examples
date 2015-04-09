var http = require("http");
var MP = require("mercadopago");

http.createServer(function (req, res) {
	var data = "";

	req.on("data", function (chunk) {
		data += chunk;
	});

	req.on("end", function () {
		res.statusCode = 200;
		res.end ();

		var event = JSON.parse(data);

		var mp = new MP ("ACCESS_TOKEN");

		if (event.type == "payment") {
			var paymentInfo = mp.get ("/v1/payments/"+event.data.id);

			if (paymentInfo.status == 200) {
				console.log (paymentInfo.response);
			}
		}
	});
}).listen(80);