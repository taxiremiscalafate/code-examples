<?php

require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$customer = $mp->post ("/v1/customers", array("email" => "test@test.com"));

print_r ($customer);
?>