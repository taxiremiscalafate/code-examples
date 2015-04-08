var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var getPaymentMethods = mp.get ("/v1/payment_methods");

getPaymentMethods.then (
    function (paymentMethods) {
        console.log (paymentMethods);
    },
    function (error) {
        console.log (error);
    });
