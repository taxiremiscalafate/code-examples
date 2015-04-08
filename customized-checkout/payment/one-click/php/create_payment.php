<?php
require_once ('mercadopago.php');

$mp = new MP('CLIENT_ID', 'CLIENT_SECRET');

$payment_data = array(
	"transaction_amount'" => 100,
	"token'" => "ff8080814c11e237014c1ff593b57b4d",
	"description'" => "Title of what you are paying for",
	"installments'" => 1,
	"payment_method_id'" => "visa",
	"payer'" => array (
		"id" => 178096989,
		"type" => "customer"
	)
);

$payment = $mp->post("/v1/payments", $payment_data);
