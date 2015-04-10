<?php
require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$cards = $mp->get ("/v1/customers/[CUSTOMER_ID]/cards");

print_r ($cards["response"]);
?>