var     http = require("http"),
    url = require("url"),
    MP = require("mercadopago");

http.createServer(function (req, res) {
    res.writeHead(200);
    res.end(index);

    var params = url.parse(req.url, true).query;
    
    var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

    var topic = params.topic;

    switch (topic) {
        case "payment":
            mp.get("/collections/notifications/"+params.id).
                then (function (payment_info) {
                    mp.get ("/merchant_orders/"+payment_info.response.collection.merchant_order_id)
                        .then (processMerchantOrder);
                });
        break;

        case "merchant_order":
            mp.get ("/merchant_orders/"+params.id)
                .then (processMerchantOrder);
        break;

        default:
            processMerchantOrder (null);
    }

    function processMerchantOrder (merchant_order_info) {
        if (merchant_order_info == null) {
            throw "Error obtaining the merchant_order";
        }

        if (merchant_order_info.status == 200) {
            console.log (merchant_order_info.response.payments);
            console.log (merchant_order_info.response.shipments);
        }
    }

}).listen(8080);
