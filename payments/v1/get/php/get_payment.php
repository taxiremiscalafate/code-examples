<?php

require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$payment = $mp->get ("/v1/payments/[ID]");

print_r ($payment);
?>