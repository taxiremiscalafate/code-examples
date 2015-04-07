var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var getPayment = mp.get ("/v1/payments/[ID]");

getPayment.then (
    function (paymentData) {
        console.log (paymentData);
    },
    function (error) {
        console.log (error);
    });
