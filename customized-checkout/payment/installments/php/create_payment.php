<?php
require_once ('mercadopago.php');

$mp = new MP('ACCESS_TOKEN');

$payment_data = array(
	"transaction_amount" => 100,
	"token" => "ff8080814c11e237014c1ff593b57b4d",
	"description" => "Title of what you are paying for",
	"payer" => array (
		"email" => "test_user_19653727@testuser.com"
	),
	"installments" => 3,
	"payment_method_id" => "master",
	"issuer_id" => 338
);

$payment = $mp->post("/v1/payments", $payment_data);
