<?php
require_once ('mercadopago.php');

$mp = new MP('CLIENT_ID', 'CLIENT_SECRET');

$payment_data = array(
	"transaction_amount'" => 100,
	"description'" => "Title of what you are paying for",
	"payment_method_id'" => "redlink",
	"payer'" => array (
		"email'" => "test_user_19653727@testuser.com"
	)
);

$payment = $mp->post("/v1/payments", $payment_data);
