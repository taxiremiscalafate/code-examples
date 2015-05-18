var MP = require ("mercadopago"),

exports.run = function (req, res) {
    var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

    var preference = {
        "items": [
            {
                "title": "Multicolor kite",
                "quantity": 1,
                "currency_id": "CURRENCY_ID", // Available currencies at: https://api.mercadopago.com/currencies
                "unit_price": 10.0,
                "dimensions": "30x30x30,500"
            }
        ],
        "shipments": {
            "mode": "me2",
            "local_pickup": true,
            "free_methods": [
                {"id": 100009}
            ]
        }
    };

    mp.createPreference (preference, function (err, data){
        if (err) {
            res.send (err);
        } else {
            res.render ("button", {"preference": data});
        }
    });
};

/* view button.jade
!!! 5
html
    head
        Pay

    body
        (href=preference.response.init_point) Pay
*/