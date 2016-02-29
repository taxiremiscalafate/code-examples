<?php
require_once ('mercadopago.php');

$mp = new MP('ACCESS_TOKEN');

$payment_data = array(
	"capture" => true
);

$payment = $mp->put("/v1/payments/PAYMENT_ID", $payment_data);