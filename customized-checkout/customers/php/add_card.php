<?php

require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$customer = array (
    "email" => "your.payer@email"
);

$saved_customer = $mp->get ("/v1/customers/search", $customer);
$customer_id = $saved_customer["response"]["results"][0]["id"];

$card = $mp->post ("/v1/customers/".$customer_id."/cards", array("token" => "ff8080814c11e237014c1ff593b57b4d"));

print_r ($card);
?>