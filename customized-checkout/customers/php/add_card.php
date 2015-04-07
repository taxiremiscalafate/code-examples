<?php

require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$card = $mp->post ("/v1/customers/[CUSTOMER_ID]/cards", array("token" => "ff8080814c11e237014c1ff593b57b4d"));

print_r ($card);
?>