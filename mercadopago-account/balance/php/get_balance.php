<?php

require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$balance = $mp->get ("/users/USER_ID/mercadopago_account/balance");

print_r ($balance);
?>