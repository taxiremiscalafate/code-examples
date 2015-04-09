var MP = require ("mercadopago"),

exports.run = function (req, res) {
    var mp = new MP ("SELLER_AT"); // seller access_token

    var preference = {
        "items": [
            {
                "title": "Item title",
                "description": "Description",
                "quantity": 1,
                "unit_price": 50,
                "currency_id": "CURRENCY_ID",
                "picture_url": "https://www.mercadopago.com/org-img/MP3/home/logomp3.gif"
            }
        ],
        "marketplace_fee": 2.29 // fee to collect
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