var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

var getBalance = mp.get ("/users/USER_ID/mercadopago_account/balance");

getBalance.then (
    function (balance) {
        console.log (balance);
    },
    function (error) {
        console.log (error);
    });
