<?php
require_once ('mercadopago.php');

$mp = new MP('ACCESS_TOKEN');

$payment_data = array(
	"transaction_amount" => 100,
	"description" => "Title of what you are paying for",
	"payment_method_id" => "TICKET_PAYMENT_METHOD_ID",
	"payer" => array (
		"email" => "test_user_19653727@testuser.com"
	)
);

$payment = $mp->post("/v1/payments", $payment_data);
