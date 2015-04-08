<?php

require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$payment_methods = $mp->get ("/v1/payment_methods");

print_r ($payment_methods);
?>