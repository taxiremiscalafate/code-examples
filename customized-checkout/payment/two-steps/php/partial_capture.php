<?php
require_once ('mercadopago.php');

$mp = new MP('ACCESS_TOKEN');

$payment_data = array(
	"transaction_amount" => 75,
	"capture" => true
);

$payment = $mp->put("/v1/payments/PAYMENT_ID", $payment_data);