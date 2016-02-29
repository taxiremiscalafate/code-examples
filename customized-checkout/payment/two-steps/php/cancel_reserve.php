<?php
require_once ('mercadopago.php');

$mp = new MP('ACCESS_TOKEN');

$payment_data = array(
	"status" => "cancelled"
);

$payment = $mp->put("/v1/payments/PAYMENT_ID", $payment_data);