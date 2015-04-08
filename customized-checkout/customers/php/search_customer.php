<?php

require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$filters = array (
    "email" => "your.payer@email"
);

$customer = $mp->get ("/v1/customers/search", $filters);

print_r ($customer);
?>