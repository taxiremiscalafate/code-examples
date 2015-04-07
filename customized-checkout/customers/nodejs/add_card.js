var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var addCard = mp.post ("/v1/customers/[CUSTOMER_ID]/cards", {"token": "ff8080814c11e237014c1ff593b57b4d"});

addCard.then (
    function (cardData) {
        console.log (cardData);
    },
    function (error) {
        console.log (error);
    });
