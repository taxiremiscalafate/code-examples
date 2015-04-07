var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var createCustomer = mp.post ("/v1/customers", {"email": "test@test.com"});

createCustomer.then (
    function (customerData) {
        console.log (customerData);
    },
    function (error) {
        console.log (error);
    });
